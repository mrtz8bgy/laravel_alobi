<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AlobiSampleProductsSeeder extends Seeder
{
    /**
     * محصولات نمونه عمومی برای نمایش در صفحه اصلی بازار چندفروشنده‌ای
     */
    public function run()
    {
        if (!\Illuminate\Support\Facades\Schema::hasTable('products')) {
            $this->command->warn('❌ جدول products وجود ندارد — ابتدا migration ها را اجرا کنید');
            return;
        }

        $admin = DB::table('users')->where('email','admin@alobi.com')->first();
        $adminId = $admin ? $admin->id : 1;

        $categorySlugs = ['mobile', 'laptops', 'clothing', 'home-appliances', 'beauty', 'sports', 'books', 'jewelry', 'tools', 'digital-products'];
        $selectedCategories = [];

        foreach ($categorySlugs as $slug) {
            $category = DB::table('categories')->where('slug', $slug)->first();
            if ($category) {
                $selectedCategories[$slug] = $category;
            }
        }

        $fallbackCategory = DB::table('categories')->first();
        $brandNames = ['Apple', 'Samsung', 'Nike', 'LG', 'Cosmetic House', 'Ariya', 'BookLand'];
        $brandId = null;

        if (DB::table('brands')->count() > 0) {
            $brandId = DB::table('brands')->first()->id;
        }

        $products = [
            [
                'name' => 'گوشی هوشمند مدل X10',
                'category_id' => ($selectedCategories['mobile'] ?? $fallbackCategory)->id ?? null,
                'brand_id' => $brandId,
                'thumbnail_img' => 'frontend/images/alobi/diamond.svg',
                'photos' => 'frontend/images/alobi/diamond.svg',
                'unit_price' => 24500000,
                'purchase_price' => 22000000,
                'discount' => 8, 'discount_type' => 'percent',
                'description' => '<p>گوشی هوشمند با صفحه‌نمایش بزرگ، دوربین دوگانه و عملکرد سریع برای کار روزانه و سرگرمی.</p>',
                'tags' => 'گوشی,موبایل,هوشمند',
                'slug' => 'mobile-x10',
                'featured' => 1, 'todays_deal' => 1, 'published' => 1, 'refundable' => 1, 'variant_product' => 0,
                'current_stock' => 15, 'rating' => 4.8, 'num_of_sale' => 18,
            ],
            [
                'name' => 'لپ‌تاپ سبک و حرفه‌ای Pro 14',
                'category_id' => ($selectedCategories['laptops'] ?? $fallbackCategory)->id ?? null,
                'brand_id' => $brandId,
                'thumbnail_img' => 'frontend/images/alobi/watch.svg',
                'photos' => 'frontend/images/alobi/watch.svg',
                'unit_price' => 41000000,
                'purchase_price' => 37500000,
                'discount' => 10, 'discount_type' => 'percent',
                'description' => '<p>لپ‌تاپ حرفه‌ای با پردازنده قدرتمند، حافظه SSD و طراحی سبک برای کار و مطالعه.</p>',
                'tags' => 'لپ‌تاپ,کامپیوتر,محصولات دیجیتال',
                'slug' => 'laptop-pro-14',
                'featured' => 1, 'todays_deal' => 0, 'published' => 1, 'refundable' => 1, 'variant_product' => 0,
                'current_stock' => 8, 'rating' => 4.9, 'num_of_sale' => 12,
            ],
            [
                'name' => 'پیراهن مردانه کتان کلاسیک',
                'category_id' => ($selectedCategories['clothing'] ?? $fallbackCategory)->id ?? null,
                'brand_id' => $brandId,
                'thumbnail_img' => 'frontend/images/alobi/necklace.svg',
                'photos' => 'frontend/images/alobi/necklace.svg',
                'unit_price' => 1800000,
                'purchase_price' => 1500000,
                'discount' => 12, 'discount_type' => 'percent',
                'description' => '<p>پیراهن مردانه با جنس کتان سبک و مناسب استفاده روزانه و رسمی.</p>',
                'tags' => 'لباس,پیراهن,مد,مردانه',
                'slug' => 'classic-cotton-shirt',
                'featured' => 1, 'todays_deal' => 1, 'published' => 1, 'refundable' => 1, 'variant_product' => 0,
                'current_stock' => 22, 'rating' => 4.7, 'num_of_sale' => 9,
            ],
            [
                'name' => 'یخچال کم‌مصرف 320 لیتری',
                'category_id' => ($selectedCategories['home-appliances'] ?? $fallbackCategory)->id ?? null,
                'brand_id' => $brandId,
                'thumbnail_img' => 'frontend/images/alobi/crown.svg',
                'photos' => 'frontend/images/alobi/crown.svg',
                'unit_price' => 34500000,
                'purchase_price' => 31000000,
                'discount' => 0, 'discount_type' => 'amount',
                'description' => '<p>یخچال کم‌مصرف با فضای مناسب، مصرف انرژی بهینه و طراحی مدرن برای خانه.</p>',
                'tags' => 'یخچال,خانه,لوازم خانگی',
                'slug' => 'fridge-320l',
                'featured' => 1, 'todays_deal' => 0, 'published' => 1, 'refundable' => 1, 'variant_product' => 0,
                'current_stock' => 6, 'rating' => 4.6, 'num_of_sale' => 7,
            ],
            [
                'name' => 'کیت مراقبت پوست Daily Glow',
                'category_id' => ($selectedCategories['beauty'] ?? $fallbackCategory)->id ?? null,
                'brand_id' => $brandId,
                'thumbnail_img' => 'frontend/images/alobi/ring.svg',
                'photos' => 'frontend/images/alobi/ring.svg',
                'unit_price' => 3700000,
                'purchase_price' => 3200000,
                'discount' => 15, 'discount_type' => 'percent',
                'description' => '<p>کیت مراقبت پوست شامل پاک‌کننده، سرم و کرم مرطوب‌کننده برای مراقبت روزانه.</p>',
                'tags' => 'زیبایی,مراقبت پوست,کرم',
                'slug' => 'daily-glow-skin-kit',
                'featured' => 1, 'todays_deal' => 1, 'published' => 1, 'refundable' => 1, 'variant_product' => 0,
                'current_stock' => 30, 'rating' => 4.9, 'num_of_sale' => 14,
            ],
            [
                'name' => 'دوچرخه شهری مدل Urban Ride',
                'category_id' => ($selectedCategories['sports'] ?? $fallbackCategory)->id ?? null,
                'brand_id' => $brandId,
                'thumbnail_img' => 'frontend/images/alobi/coin.svg',
                'photos' => 'frontend/images/alobi/coin.svg',
                'unit_price' => 18500000,
                'purchase_price' => 16500000,
                'discount' => 5, 'discount_type' => 'percent',
                'description' => '<p>دوچرخه شهری سبک با ساختار مقاوم و مناسب سفرهای کوتاه و تفریحی.</p>',
                'tags' => 'دوچرخه,ورزش,سفر',
                'slug' => 'urban-ride-bike',
                'featured' => 1, 'todays_deal' => 0, 'published' => 1, 'refundable' => 1, 'variant_product' => 0,
                'current_stock' => 9, 'rating' => 4.5, 'num_of_sale' => 5,
            ],
        ];

        $now = now();
        foreach ($products as $p) {
            if (DB::table('products')->where('slug', $p['slug'])->exists()) {
                continue;
            }

            DB::table('products')->insert(array_merge([
                'added_by' => 'admin',
                'user_id' => $adminId,
                'unit' => 'عدد',
                'weight' => 0,
                'tax' => 0, 'tax_type' => 'amount',
                'shipping_type' => 'flat_rate', 'shipping_cost' => 0,
                'meta_title' => $p['name'],
                'meta_description' => strip_tags($p['description']),
                'created_at' => $now, 'updated_at' => $now,
            ], $p));
        }

        if (\Illuminate\Support\Facades\Schema::hasTable('home_categories') && DB::table('home_categories')->count() === 0) {
            $i = 0;
            foreach (array_values($selectedCategories) as $category) {
                if ($category) {
                    DB::table('home_categories')->insert(['category_id' => $category->id, 'position' => $i++, 'subsubcategories' => null, 'created_at' => $now, 'updated_at' => $now]);
                }
            }
        }
    }
}
