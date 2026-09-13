<?php

if (!function_exists('home_discount_percentage')) {
    function home_discount_percentage($product_id) {
        $product = \App\Models\Product::find($product_id);
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

if (!function_exists('home_base_price')) {
    function home_base_price($product_id) {
        $product = \App\Models\Product::find($product_id);
        if ($product) {
            return number_format($product->unit_price) . ' تومان';
        }
        return '0 تومان';
    }
}

if (!function_exists('home_discounted_base_price')) {
    function home_discounted_base_price($product_id) {
        $product = \App\Models\Product::find($product_id);
        if ($product) {
            $price = $product->unit_price;
            if ($product->discount > 0) {
                if ($product->discount_type == 'percent') {
                    $price -= ($price * $product->discount) / 100;
                } elseif ($product->discount_type == 'amount') {
                    $price -= $product->discount;
                }
            }
            return number_format($price) . ' تومان';
        }
        return '0 تومان';
    }
}

if (!function_exists('uploaded_asset')) {
    function uploaded_asset($path) {
        // In older active ecommerce or generic apps, images are stored directly in public/uploads or public
        if ($path) {
            return app('url')->asset('public/' . $path);
        }
        return app('url')->asset('public/assets/img/placeholder.jpg');
    }
}

if (!function_exists('filter_products')) {
    function filter_products($query) {
        return $query;
    }
}

