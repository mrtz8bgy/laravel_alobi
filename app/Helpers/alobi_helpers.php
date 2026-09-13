<?php
/**
 * Alobi Safe DB helpers
 * — prevent "Base table or view not found" errors when tables don't exist yet
 */

if (!function_exists('safe_table_exists')) {
    function safe_table_exists($table) {
        try {
            return \Illuminate\Support\Facades\Schema::hasTable($table);
        } catch (\Exception $e) {
            return false;
        }
    }
}

if (!function_exists('safe_business_setting')) {
    function safe_business_setting($key, $default = null) {
        try {
            if (!safe_table_exists('business_settings')) return $default;
            $row = \Illuminate\Support\Facades\DB::table('business_settings')->where('type', $key)->first();
            return $row ? $row->value : $default;
        } catch (\Exception $e) {
            return $default;
        }
    }
}

if (!function_exists('alobi_setting')) {
    function alobi_setting($key, $default = null) {
        return safe_business_setting($key, $default);
    }
}

if (!function_exists('home_discount_percentage')) {
    function home_discount_percentage($product_id) {
        $product = \App\Product::find($product_id);
        if ($product && $product->discount > 0) {
            if ($product->discount_type == 'percent') {
                return $product->discount;
            } elseif ($product->discount_type == 'amount' && $product->unit_price > 0) {
                return round(($product->discount / $product->unit_price) * 100);
            }
        }
        return 0;
    }
}

if (!function_exists('uploaded_asset')) {
    function uploaded_asset($id) {
        if (($asset = \App\Upload::find($id)) != null) {
            return $asset->external_link == null ? my_asset($asset->file_name) : $asset->external_link;
        }
        return static_asset('assets/img/placeholder.jpg');
    }
}

if (!function_exists('my_asset')) {
    function my_asset($path) {
        if (env('FILESYSTEM_DRIVER') == 's3') {
            return \Illuminate\Support\Facades\Storage::disk('s3')->url($path);
        }
        return app('url')->asset($path);
    }
}

if (!function_exists('static_asset')) {
    function static_asset($path) {
        return app('url')->asset('public/' . $path);
    }
}
