@extends('frontend.layouts.app')

@php
    use App\Product;
    use App\Category;
    use App\Brand;
    use App\FlashDeal;
    use App\Slider;
    use App\BusinessSetting;
    use App\CustomerProduct;
    use App\Addon;
@endphp

@section('content')

@php
    // ═══ حفاظت در برابر جدول‌های نصب‌نشده ═══
    try {
        $megaCategories = \Illuminate\Support\Facades\Schema::hasTable('categories')
            ? \App\Category::with(['subcategories' => function($query) {
                $query->where('published', 1)->with(['subsubcategories' => function($q){
                    $q->where('published', 1);
                }]);
            }])->where('top', 1)->where('published', 1)->get()
            : collect();
    } catch (\Exception $e) { $megaCategories = collect(); }

    // ایمن‌سازی سایر متغیرهای صفحه اصلی
    try {
        $num_todays_deal = \Illuminate\Support\Facades\Schema::hasTable('products')
            ? count(filter_products(\App\Product::where('published', 1)->where('todays_deal', 1))->get())
            : 0;
    } catch (\Exception $e) { $num_todays_deal = 0; }

    try {
        $total_customers = \Illuminate\Support\Facades\Schema::hasTable('users')
            ? \App\User::where('user_type','customer')->orWhereNull('user_type')->count()
            : 0;
    } catch (\Exception $e) { $total_customers = 0; }
@endphp

<link rel="stylesheet" href="{{ asset('frontend/css/index-page.css') }}">

<!-- ============================================ -->
<!-- مگا منوی دسته‌بندی - کاملاً مستقل -->

<!-- مگا منوی  من در اینجا زیر دسته بندیها را نشان نمیدهد از تو میخواهم این قسمت را برام تکمیل کنی به طوری که زیر دسته بندی ها نمایش داده شوند -->

<!-- ============================================ -->
<section class="mega-menu-section">
    <div class="container-fluid px-0">
        <div class="mega-menu-wrapper">
            <nav class="mega-menu-nav">
                <div class="mega-menu-trigger" id="megaMenuTrigger">
                    <a href="#" class="mega-menu-btn" id="megaMenuBtn">
                        <i class="la la-bars"></i>
                        <span>{{__('همه دسته‌بندی‌ها')}}</span>
                        <i class="la la-angle-down"></i>
                    </a>
                    
                    <ul class="mega-menu-list" id="megaMenuList">
                        @foreach ($megaCategories as $key => $category)
                            <li class="mega-menu-item">
                                <a href="{{ route('products.category', $category->slug) }}" class="mega-menu-link">
                                    @if($category->icon && file_exists(public_path($category->icon)))
                                        <img class="mega-cat-icon lazyload" src="{{ asset('frontend/images/placeholder.jpg') }}" data-src="{{ asset($category->icon) }}" width="30" alt="{{ __($category->name) }}">
                                    @else
                                        <i class="la la-folder-open" style="font-size:20px;width:30px;text-align:center;"></i>
                                    @endif
                                    <span>{{ __($category->name) }}</span>
                                    @if($category->subcategories && $category->subcategories->isNotEmpty())
                                        <i class="la la-angle-left mega-arrow"></i>
                                    @endif
                                </a>

                                @if($category->subcategories && $category->subcategories->isNotEmpty())
                                    <div class="mega-sub-menu">
                                        <div class="mega-sub-container">
                                            <div class="row">
                                                @foreach ($category->subcategories as $subcategory)
                                                    <div class="col-lg-4 col-md-6 col-12">
                                                        <a href="{{ route('products.subcategory', $subcategory->slug) }}" class="mega-sub-link">
                                                            @if($subcategory->icon && file_exists(public_path($subcategory->icon)))
                                                                <img class="mega-sub-icon lazyload" src="{{ asset('frontend/images/placeholder.jpg') }}" data-src="{{ asset($subcategory->icon) }}" width="24" alt="{{ __($subcategory->name) }}">
                                                            @else
                                                                <i class="la la-folder-o" style="font-size:20px;width:24px;text-align:center;"></i>
                                                            @endif
                                                            <span>{{ __($subcategory->name) }}</span>
                                                        </a>

                                                        @if($subcategory->subsubcategories && $subcategory->subsubcategories->isNotEmpty())
                                                            <ul class="mega-sub-sub-list">
                                                                @foreach ($subcategory->subsubcategories->take(8) as $subSubCategory)
                                                                    <li>
                                                                        <a href="{{ route('products.subsubcategory', $subSubCategory->slug) }}">
                                                                            {{ __($subSubCategory->name) }}
                                                                        </a>
                                                                    </li>
                                                                @endforeach
                                                                @if($subcategory->subsubcategories->count() > 8)
                                                                    <li>
                                                                        <a href="{{ route('products.subcategory', $subcategory->slug) }}">
                                                                            {{ __('مشاهده بیشتر') }}
                                                                        </a>
                                                                    </li>
                                                                @endif
                                                            </ul>
                                                        @endif
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                @endif
                            </li>
                        @endforeach
                        
                        <li class="mega-menu-item mega-view-all">
                            <a href="{{ route('categories.all') }}" class="mega-menu-link">
                                <i class="la la-plus-circle"></i>
                                <span>{{__('مشاهده همه دسته‌بندی‌ها')}}</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</section>

<!-- ============================================ -->
<!-- HERO لوکس جدید Alobi -->
<!-- ============================================ -->
<section class="d-hero">
    <div class="container">
        <div class="d-hero-inner">
            <div class="d-hero-content">
                <span class="d-hero-badge">
                    <span class="dot"></span>
                    معتبرترین مارکت‌پلیس کالا و خدمات لوکس ایران
                </span>
                <h1>
                    درخشش <span class="gold-line">اعتماد</span>
                    در هر <span class="gold-line">کالا</span>
                </h1>
                <p>
                    خرید و فروش طلا، کالای لوکس، ساعت‌های لوکس و سنگ‌های قیمتی با
                    <strong >شناسنامه معتبر</strong>،
                    <strong >ضمانت اصالت</strong> و
                    <strong >امکان رهگیری دائمی</strong>.
                    Alobi، جایی که ارزش‌ها ماندگارند.
                </p>
                <div class="d-hero-cta">
                    <a href="{{ route('categories.all') }}" class="btn-lux btn-lux-primary">
                        <i class="la la-shopping-bag"></i> مشاهده محصولات
                    </a>
                    <a href="{{ route('jewelry.certificates.verify_page') }}" class="btn-lux btn-lux-outline">
                        <i class="la la-certificate"></i> استعلام اصالت کالا
                    </a>
                </div>
                <div class="d-hero-stats">
                    <div class="d-hero-stat">
                        <strong>+۱۰ سال</strong>
                        <span>سابقه درخشان</span>
                    </div>
                    <div class="d-hero-stat">
                        <strong>+۵۰K</strong>
                        <span>کالا اصالت دار</span>
                    </div>
                    <div class="d-hero-stat">
                        <strong>۱۰۰٪</strong>
                        <span>گارانتی اصالت</span>
                    </div>
                    <div class="d-hero-stat">
                        <strong>۲۴/۷</strong>
                        <span>پشتیبانی تخصصی</span>
                    </div>
                </div>
            </div>
            <div class="d-hero-visual">
                <div class="d-hero-ring r1"></div>
                <div class="d-hero-ring r2"></div>
                <div class="d-hero-ring r3"></div>
                <div class="d-hero-diamond"></div>
                <div class="d-hero-float-card d-fc-1">
                    <div class="fc-icon"><i class="la la-certificate"></i></div>
                    <div class="fc-text">
                        <strong>شناسنامه معتبر</strong>
                        <span>قابل استعلام آنلاین</span>
                    </div>
                </div>
                <div class="d-hero-float-card d-fc-2">
                    <div class="fc-icon"><i class="la la-shield"></i></div>
                    <div class="fc-text">
                        <strong>ضمانت اصالت</strong>
                        <span>تضمین ۱۰۰٪ کالا</span>
                    </div>
                </div>
                <div class="d-hero-float-card d-fc-3">
                    <div class="fc-icon"><i class="la la-map-pin"></i></div>
                    <div class="fc-text">
                        <strong>رهگیری هوشمند</strong>
                        <span>از دسترسی دزدها دور بمانید</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ============================================ -->
<!-- اسلایدر اصلی سایت -->
<!-- ============================================ -->
@php
    $sliders = collect();
    try {
        if (\Illuminate\Support\Facades\Schema::hasTable('sliders')) {
            $sliders = \App\Slider::where('published', 1)->orderBy('id', 'asc')->get();
        }
    } catch (\Exception $e) {
        $sliders = collect();
    }
@endphp

@if($sliders->count() > 0)
<section class="d-main-slider">
    <div class="container">
        <div class="d-slider-wrapper">
            <div class="d-slider-carousel" id="mainSlider">
                @foreach($sliders as $key => $slider)
                    <div class="d-slide-item">
                        <a href="{{ $slider->link ?? '#' }}" class="d-slide-link">
                            @if(file_exists(public_path($slider->photo)))
                                <img 
                                    src="{{ asset($slider->photo) }}" 
                                    alt="اسلایدر {{ $key + 1 }}" 
                                    class="d-slide-img"
                                >
                            @else
                                <div style="width:100%; height:500px; background:#eee; display:flex; align-items:center; justify-content:center; color:#999;">
                                    <span>عکس اسلایدر پیدا نشد: {{ $slider->photo }}</span>
                                </div>
                            @endif
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // اگه jQuery و Slick موجود بودن
        if (typeof jQuery !== 'undefined' && jQuery.fn.slick) {
            jQuery('#mainSlider').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 5000,
                arrows: true,
                dots: true,
                fade: true,
                infinite: true,
                speed: 800,
                cssEase: 'ease-in-out',
                pauseOnHover: false,
                rtl: true,
                prevArrow: '<button type="button" class="slick-prev"><i class="la la-angle-right"></i></button>',
                nextArrow: '<button type="button" class="slick-next"><i class="la la-angle-left"></i></button>'
            });
        }
    });
</script>
@endif

<!-- ============================================ -->
<!-- سرویس‌های طلایی -->
<!-- ============================================ -->
<section class="d-services">
    <div class="container">
        <div class="d-services-grid">
            <div class="d-service-card">
                <div class="d-service-icon">🛡️</div>
                <h5>گارانتی اصالت</h5>
                <p>تمام قطعات قبل از فروش توسط کارشناسان خبره ارزیابی و تأیید می‌شوند.</p>
            </div>
            <div class="d-service-card">
                <div class="d-service-icon">📜</div>
                <h5>شناسنامه رسمی</h5>
                <p>هر کالا دارای شناسنامه معتبر با شماره سریال یکتا و قابل استعلام است.</p>
            </div>
            <div class="d-service-card">
                <div class="d-service-icon">🚨</div>
                <h5>رهگیری سرقت</h5>
                <p>ثبت فوری سرقت/مفقودی و اطلاع‌رسانی به شبکه همکاران سراسر کشور.</p>
            </div>
            <div class="d-service-card">
                <div class="d-service-icon">🚚</div>
                <h5>ارسال امن</h5>
                <p>ارسال کاملاً بیمه شده با اسکورت مسلح برای قطعات فوق‌العاده ارزشمند.</p>
            </div>
            <div class="d-service-card">
                <div class="d-service-icon">💎</div>
                <h5>تنوع بی‌نظیر</h5>
                <p>بیش از ده‌ها هزار مدل طلا، کالای لوکس، ساعت لوکس و سنگ قیمتی.</p>
            </div>
            <div class="d-service-card">
                <div class="d-service-icon">🔧</div>
                <h5>خدمات پس از فروش</h5>
                <p>تعمیر، سایز کردن، تمیز کردن و بروزرسانی رایگان شناسنامه.</p>
            </div>
        </div>
    </div>
</section>

<!-- ============================================ -->
<!-- فلش دیل

<!-- ============================================ -->
<!-- فلش دیل (تخفیف امروز) - زیر بنر -->
<!-- ============================================ -->
@php
    $num_todays_deal = count(filter_products(\App\Product::where('published', 1)->where('todays_deal', 1))->get());
@endphp

@if($num_todays_deal > 0)
<section class="flash-deal-section">
    <div class="flash-deal-wrapper">
        <div class="flash-deal-header">
            <h4><i class="la la-bolt"></i> {{ __('تخفیف امروز') }} <span class="badge badge-danger">{{__('داغ')}}</span></h4>
            <a href="{{ route('products.todays_deal') }}" class="flash-deal-view-all">{{__('مشاهده همه')}} <i class="la la-angle-left"></i></a>
        </div>
        <div class="flash-deal-scroll">
            @foreach (filter_products(\App\Product::where('published', 1)->where('todays_deal', '1'))->get() as $key => $product)
                @if ($product != null)
                    <a href="{{ route('product', $product->slug) }}" class="flash-deal-item-horizontal">
                        <img class="lazyload" src="{{ asset('frontend/images/placeholder.jpg') }}" data-src="{{ asset($product->flash_deal_img) }}" alt="{{ __($product->name) }}">
                        <div class="flash-deal-info">
                            <span class="flash-deal-price">{{ home_discounted_base_price($product->id) }}</span>
                            @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                <del class="flash-deal-old-price">{{ home_base_price($product->id) }}</del>
                            @endif
                        </div>
                    </a>
                @endif
            @endforeach
        </div>
    </div>
</section>
@endif

<!-- ============================================ -->
<!-- دسته بندی های معروف - اسکرول افقی -->
<!-- ============================================ -->
<section class="mb-5 categories-section">
    <div class="container">
        <div class="section-title-1">
            <h3><i class="la la-tags"></i> {{__('دسته بندی های معروف')}}</h3>
            <ul class="inline-links">
                <li>
                    <a href="{{ route('categories.all') }}">{{__('نمایش همه')}} <i class="la la-angle-left"></i></a>
                </li>
            </ul>
        </div>
        
        <div class="scroll-btn scroll-left" id="categoriesScrollLeft">
            <i class="la la-angle-right"></i>
        </div>
        <div class="scroll-btn scroll-right" id="categoriesScrollRight">
            <i class="la la-angle-left"></i>
        </div>
        
        <div class="categories-scroll-wrapper" id="categoriesScrollWrapper">
            <div class="categories-scroll-container">
                @php
                    $topCategories = Category::where('top', 1)->take(15)->get();
                    if(count($topCategories) < 8){
                        $topCategories = Category::take(12)->get();
                    }
                @endphp
                @foreach ($topCategories as $category)
                    <div class="category-scroll-item">
                        <a href="{{ route('products.category', $category->slug) }}" class="category-card-horizontal">
                            <div class="category-icon-box">
                                @if($category->icon && file_exists(public_path($category->icon)))
                                    <img src="{{ asset($category->icon) }}" alt="{{ __($category->name) }}" class="category-icon-img">
                                @else
                                    <div class="category-icon-default">
                                        <i class="fa fa-tag"></i>
                                    </div>
                                @endif
                            </div>
                            <div class="category-name-horizontal">
                                {{ __($category->name) }}
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>

<!-- ============================================ -->
<!-- آیکون‌های تبلیغاتی -->
<!-- ============================================ -->
<div class="mobile-icons-section">
    <div class="mobile-icons-container">
        @php
            $banners = App\Banner::where('position', 1)->where('published', 1)->get();
            $icons = ['💎', '👑', '🎁', '🔥', '✨', '💍', '⌚', '📿', '💼', '🛍️'];
        @endphp
        
        @if(count($banners) > 0)
            @foreach ($banners as $key => $banner)
                <a href="{{ $banner->url }}" target="_blank" class="mobile-icon-item">
                    <div class="mobile-icon-circle">
                        <span class="mobile-icon-emoji">{{ $icons[$key % count($icons)] }}</span>
                    </div>
                    <p class="mobile-icon-title">ویژه</p>
                </a>
            @endforeach
        @endif
    </div>
</div>

<!-- ============================================ -->
<!-- برند های معروف - اسکرول افقی -->
<!-- ============================================ -->
<section class="mb-5 brands-section">
    <div class="container">
        <div class="section-title-1">
            <h3><i class="la la-building"></i> {{__('برند های معروف')}}</h3>
            <ul class="inline-links">
                <li>
                    <a href="{{ route('brands.all') }}">{{__('نمایش همه')}} <i class="la la-angle-left"></i></a>
                </li>
            </ul>
        </div>
        
        <div class="scroll-btn scroll-left" id="brandsScrollLeft">
            <i class="la la-angle-right"></i>
        </div>
        <div class="scroll-btn scroll-right" id="brandsScrollRight">
            <i class="la la-angle-left"></i>
        </div>
        
        <div class="brands-scroll-wrapper" id="brandsScrollWrapper">
            <div class="brands-scroll-container">
                @php
                    $topBrands = Brand::where('top', 1)->take(15)->get();
                    if(count($topBrands) < 9){
                        $topBrands = Brand::take(12)->get();
                    }
                @endphp
                @foreach ($topBrands as $brand)
                    <div class="brand-scroll-item">
                        <a href="{{ route('products.brand', $brand->slug) }}" class="brand-card-horizontal">
                            <div class="brand-icon-box">
                                @if($brand->logo && file_exists(public_path($brand->logo)))
                                    <img src="{{ asset($brand->logo) }}" alt="{{ __($brand->name) }}" class="brand-icon-img">
                                @else
                                    <div class="brand-icon-default">
                                        <i class="fa fa-building-o"></i>
                                    </div>
                                @endif
                            </div>
                            <div class="brand-name-horizontal">
                                {{ __($brand->name) }}
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>

<!-- ============================================ -->
<!-- بخش محصولات ویژه -->
<!-- ============================================ -->
<section class="mb-5">
    <div class="container">
        <div class="px-3 py-4 p-md-4 bg-light shadow-sm rounded-3">
            <div class="section-title-1">
                <h3><i class="la la-star"></i> {{__('محصولات ویژه')}}</h3>
                <ul class="inline-links">
                    <li><a href="{{ route('products.featured') }}">{{__('مشاهده همه')}} <i class="la la-angle-left"></i></a></li>
                </ul>
            </div>
            <div class="caorusel-box arrow-round gutters-5">
                <div class="slick-carousel" data-slick-items="6" data-slick-xl-items="5" data-slick-lg-items="4" data-slick-md-items="3" data-slick-sm-items="2" data-slick-xs-items="2">
                    @php
                        $featured_products = filter_products(Product::where('published', 1)->where('featured', 1))->take(12)->get();
                    @endphp
                    @foreach ($featured_products as $product)
                        <div class="caorusel-card">
                            <div class="product-card-2 card card-product shop-cards">
                                <div class="card-body p-0">
                                    <div class="card-image">
                                        <a href="{{ route('product', $product->slug) }}" class="d-block">
                                            <img class="img-fit lazyload mx-auto" src="{{ asset('frontend/images/placeholder.jpg') }}" data-src="{{ asset($product->featured_img) }}" alt="{{ __($product->name) }}">
                                        </a>
                                    </div>
                                    <div class="p-md-3 p-2">
                                        <div class="price-box">
                                            @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                                <del class="old-product-price strong-400">{{ home_base_price($product->id) }}</del>
                                            @endif
                                            <br>
                                            <span class="product-price strong-600">{{ home_discounted_base_price($product->id) }}</span>
                                        </div>
                                        <div class="star-rating star-rating-sm mt-1">
                                            {{ renderStarRating($product->rating) }}
                                        </div>
                                        <h2 class="product-title p-0">
                                            <a href="{{ route('product', $product->slug) }}">{{ __($product->name) }}</a>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ============================================ -->
<!-- بخش پرفروش‌ترین محصولات -->
<!-- ============================================ -->
<section class="mb-5">
    <div class="container">
        <div class="px-3 py-4 p-md-4 bg-light shadow-sm rounded-3">
            <div class="section-title-1">
                <h3><i class="la la-fire"></i> {{__('پرفروش‌ترین محصولات')}}</h3>
                <ul class="inline-links">
                    <li><a href="{{ route('products.best_selling') }}">{{__('مشاهده همه')}} <i class="la la-angle-left"></i></a></li>
                </ul>
            </div>
            <div class="caorusel-box arrow-round gutters-5">
                <div class="slick-carousel" data-slick-items="6" data-slick-xl-items="5" data-slick-lg-items="4" data-slick-md-items="3" data-slick-sm-items="2" data-slick-xs-items="2">
                    @php
                        $best_selling_products = filter_products(Product::where('published', 1)->orderBy('num_of_sale', 'desc'))->take(12)->get();
                    @endphp
                    @foreach ($best_selling_products as $product)
                        <div class="caorusel-card">
                            <div class="product-card-2 card card-product shop-cards">
                                <div class="card-body p-0">
                                    <div class="card-image">
                                        <a href="{{ route('product', $product->slug) }}" class="d-block">
                                            <img class="img-fit lazyload mx-auto" src="{{ asset('frontend/images/placeholder.jpg') }}" data-src="{{ asset($product->featured_img) }}" alt="{{ __($product->name) }}">
                                        </a>
                                    </div>
                                    <div class="p-md-3 p-2">
                                        <div class="price-box">
                                            @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                                <del class="old-product-price strong-400">{{ home_base_price($product->id) }}</del>
                                            @endif
                                            <br>
                                            <span class="product-price strong-600">{{ home_discounted_base_price($product->id) }}</span>
                                        </div>
                                        <div class="star-rating star-rating-sm mt-1">
                                            {{ renderStarRating($product->rating) }}
                                        </div>
                                        <h2 class="product-title p-0">
                                            <a href="{{ route('product', $product->slug) }}">{{ __($product->name) }}</a>
                                        </h2>
                                        <div class="text-success small mt-1">
                                            <i class="la la-shopping-cart"></i> {{ $product->num_of_sale }} فروش
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ============================================ -->
<!-- بخش جدیدترین محصولات -->
<!-- ============================================ -->
<section class="mb-5">
    <div class="container">
        <div class="px-3 py-4 p-md-4 bg-light shadow-sm rounded-3">
            <div class="section-title-1">
                <h3><i class="la la-clock-o"></i> {{__('جدیدترین محصولات')}}</h3>
                <ul class="inline-links">
                    <li><a href="{{ route('products.new') }}">{{__('مشاهده همه')}} <i class="la la-angle-left"></i></a></li>
                </ul>
            </div>
            <div class="caorusel-box arrow-round gutters-5">
                <div class="slick-carousel" data-slick-items="6" data-slick-xl-items="5" data-slick-lg-items="4" data-slick-md-items="3" data-slick-sm-items="2" data-slick-xs-items="2">
                    @php
                        $new_products = filter_products(Product::where('published', 1)->orderBy('created_at', 'desc'))->take(12)->get();
                    @endphp
                    @foreach ($new_products as $product)
                        <div class="caorusel-card">
                            <div class="product-card-2 card card-product shop-cards">
                                <div class="card-body p-0">
                                    <div class="card-image">
                                        <a href="{{ route('product', $product->slug) }}" class="d-block">
                                            <img class="img-fit lazyload mx-auto" src="{{ asset('frontend/images/placeholder.jpg') }}" data-src="{{ asset($product->featured_img) }}" alt="{{ __($product->name) }}">
                                        </a>
                                    </div>
                                    <div class="p-md-3 p-2">
                                        <div class="price-box">
                                            @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                                <del class="old-product-price strong-400">{{ home_base_price($product->id) }}</del>
                                            @endif
                                            <br>
                                            <span class="product-price strong-600">{{ home_discounted_base_price($product->id) }}</span>
                                        </div>
                                        <div class="star-rating star-rating-sm mt-1">
                                            {{ renderStarRating($product->rating) }}
                                        </div>
                                        <h2 class="product-title p-0">
                                            <a href="{{ route('product', $product->slug) }}">{{ __($product->name) }}</a>
                                        </h2>
                                        <div class="text-muted small mt-1">
                                            <i class="la la-calendar"></i> {{ date('Y/m/d', strtotime($product->created_at)) }}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ============================================ -->
<!-- بخش محصولات با تخفیف ویژه -->
<!-- ============================================ -->
<section class="mb-5">
    <div class="container">
        <div class="px-3 py-4 p-md-4 bg-light shadow-sm rounded-3">
            <div class="section-title-1">
                <h3><i class="la la-gift"></i> {{__('تخفیف ویژه')}}</h3>
                <ul class="inline-links">
                    <li><a href="{{ route('products.discounted') }}">{{__('مشاهده همه')}} <i class="la la-angle-left"></i></a></li>
                </ul>
            </div>
            <div class="caorusel-box arrow-round gutters-5">
                <div class="slick-carousel" data-slick-items="6" data-slick-xl-items="5" data-slick-lg-items="4" data-slick-md-items="3" data-slick-sm-items="2" data-slick-xs-items="2">
                    @php
                        $discounted_products = filter_products(Product::where('published', 1)->where('discount', '>', 0))->take(12)->get();
                    @endphp
                    @foreach ($discounted_products as $product)
                        <div class="caorusel-card">
                            <div class="product-card-2 card card-product shop-cards">
                                <div class="card-body p-0">
                                    <div class="card-image">
                                        <span class="discount-badge">
                                            -{{ $product->discount }}%
                                        </span>
                                        <a href="{{ route('product', $product->slug) }}" class="d-block">
                                            <img class="img-fit lazyload mx-auto" src="{{ asset('frontend/images/placeholder.jpg') }}" data-src="{{ asset($product->featured_img) }}" alt="{{ __($product->name) }}">
                                        </a>
                                    </div>
                                    <div class="p-md-3 p-2">
                                        <div class="price-box">
                                            <del class="old-product-price strong-400">{{ home_base_price($product->id) }}</del>
                                            <br>
                                            <span class="product-price strong-600 text-danger">{{ home_discounted_base_price($product->id) }}</span>
                                        </div>
                                        <div class="star-rating star-rating-sm mt-1">
                                            {{ renderStarRating($product->rating) }}
                                        </div>
                                        <h2 class="product-title p-0">
                                            <a href="{{ route('product', $product->slug) }}">{{ __($product->name) }}</a>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>

<div id="section_featured"></div>
<div id="section_best_selling"></div>
<div id="section_home_categories"></div>

@php
    $classified_product_enabled = false;
    try {
        $classified_product_enabled = \Illuminate\Support\Facades\Schema::hasTable('business_settings')
            && \App\BusinessSetting::where('type', 'classified_product')->first()
            && \App\BusinessSetting::where('type', 'classified_product')->first()->value == 1;
    } catch (\Exception $e) {
        $classified_product_enabled = false;
    }
@endphp

@if($classified_product_enabled)
    @php
        $customer_products = CustomerProduct::where('status', '1')->where('published', '1')->take(16)->get();
    @endphp
   @if (count($customer_products) > 0)
       <section class="mb-5">
           <div class="container">
               <div class="px-3 py-4 p-md-4 bg-light shadow-sm rounded-3">
                   <div class="section-title-1">
                       <h3><i class="la la-bullhorn"></i> {{__('تبلیغات')}}</h3>
                       <ul class="inline-links">
                           <li><a href="{{ route('customer.products') }}">{{__('مشاهده همه')}} <i class="la la-angle-left"></i></a></li>
                       </ul>
                   </div>
                   <div class="caorusel-box arrow-round">
                       <div class="slick-carousel" data-slick-items="6" data-slick-xl-items="5" data-slick-lg-items="4" data-slick-md-items="3" data-slick-sm-items="2" data-slick-xs-items="2">
                           @foreach ($customer_products as $key => $customer_product)
                               <div class="product-card-2 card card-product my-2 mx-1 mx-sm-2 shop-cards shop-tech">
                                   <div class="card-body p-0">
                                       <div class="card-image">
                                           <a href="{{ route('customer.product', $customer_product->slug) }}" class="d-block">
                                               <img class="img-fit lazyload mx-auto" src="{{ asset('frontend/images/placeholder.jpg') }}" data-src="{{ asset($customer_product->thumbnail_img) }}" alt="{{ __($customer_product->name) }}">
                                           </a>
                                       </div>
                                       <div class="p-sm-3 p-2">
                                           <div class="price-box">
                                               <span class="product-price strong-600">{{ single_price($customer_product->unit_price) }}</span>
                                           </div>
                                           <h2 class="product-title p-0 text-truncate-1">
                                               <a href="{{ route('customer.product', $customer_product->slug) }}">{{ __($customer_product->name) }}</a>
                                           </h2>
                                           <div>
                                               @if($customer_product->conditon == 'new')
                                                   <span class="product-label label-hot">{{__('جدید')}}</span>
                                               @elseif($customer_product->conditon == 'used')
                                                   <span class="product-label label-hot">{{__('دست دوم')}}</span>
                                               @endif
                                           </div>
                                       </div>
                                   </div>
                               </div>
                           @endforeach
                       </div>
                   </div>
               </div>
           </div>
       </section>
   @endif
@endif

<div class="mb-5">
    <div class="container">
        <div class="row gutters-10">
            @foreach (App\Banner::where('position', 2)->where('published', 1)->get() as $key => $banner)
                <div class="col-lg-{{ 12/count(App\Banner::where('position', 2)->where('published', 1)->get()) }}">
                    <div class="media-banner mb-3 mb-lg-0">
                        <a href="{{ $banner->url }}" target="_blank" class="banner-container">
                            <img src="{{ asset('frontend/images/placeholder-rect.jpg') }}" data-src="{{ asset($banner->photo) }}" alt="{{ env('APP_NAME') }} promo" class="img-fluid lazyload">
                        </a>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>

<div id="section_best_sellers"></div>

<!-- ============================================ -->
<!-- Banners Section -->
<section class="d-banners" style="padding: 40px 0;">
    <div class="container">
        <div class="row">
            @if(isset($banners_1) && count($banners_1) > 0)
                @foreach ($banners_1 as $key => $banner)
                    <div class="col-md-6 mb-3">
                        <a href="{{ $banner->url }}" class="d-block" style="border-radius: 0; overflow: hidden; box-shadow: 0 10px 30px rgba(0,0,0,0.1); display: block; position: relative; transition: transform 0.3s;">
                            <img src="{{ asset($banner->photo) }}" alt="Banner" style="width: 100%; object-fit: cover; aspect-ratio: 21/9; display: block;">
                            <div style="position: absolute; inset: 0; background: linear-gradient(to top, rgba(0,0,0,0.4), transparent);"></div>
                        </a>
                    </div>
                @endforeach
            @else
                <!-- Mock Banners for Preview if empty -->
                <div class="col-md-6 mb-3">
                    <a href="#" class="d-block d-banner-card">
                        <img src="https://images.unsplash.com/photo-1549298916-b41d501d3772?q=80&w=800&auto=format&fit=crop" alt="Premium Shoes">
                        <div class="d-banner-overlay">
                            <h3>کالکشن جدید کفش‌های لوکس</h3>
                            <span>مشاهده محصولات &larr;</span>
                        </div>
                    </a>
                </div>
                <div class="col-md-6 mb-3">
                    <a href="#" class="d-block d-banner-card">
                        <img src="https://images.unsplash.com/photo-1542496658-e33a6d0d50f6?q=80&w=800&auto=format&fit=crop" alt="Luxury Watches">
                        <div class="d-banner-overlay">
                            <h3>ساعت‌های لاکچری سوییسی</h3>
                            <span>تخفیف ویژه &larr;</span>
                        </div>
                    </a>
                </div>
            @endif
        </div>
    </div>
</section>


<!-- Super Deal Section -->
<section class="d-super-deals">
    <div class="container">
        <div class="d-sd-header" style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 25px; flex-wrap: wrap; gap: 15px;">
            <div style="display: flex; align-items: center; gap: 15px;">
                <h2><i class="la la-bolt" ></i> پیشنهاد شگفت‌انگیز</h2>
                <div class="d-timer">
                    12 : 45 : 30
                </div>
            </div>
            <a href="{{ route('products.todays_deal') }}" class="text-gold" style="font-weight: 700; font-size: 15px; text-decoration: none; text-transform:uppercase; letter-spacing:1px;">مشاهده همه <i class="la la-angle-left"></i></a>
        </div>
        <div class="d-sd-grid" style="display: grid; grid-template-columns: repeat(auto-fill, minmax(240px, 1fr)); gap: 20px;">
            @php $todays_deal_products = filter_products(\App\Product::where('todays_deal', 1)->where('published', 1))->limit(4)->get(); @endphp
            @foreach($todays_deal_products as $key => $product)
                <a href="{{ route('product', $product->slug) }}" class="d-sd-card" style="padding: 15px; text-align: center; position: relative; display: block; text-decoration: none;">
                    @if(home_discount_percentage($product->id) > 0)
                        <span style="position: absolute; top: 10px; right: 10px; padding: 4px 10px; font-size: 12px; font-weight: bold; z-index: 2;">-{{ home_discount_percentage($product->id) }}%</span>
                    @endif
                    <img src="{{ uploaded_asset($product->thumbnail_img) }}" alt="{{ __($product->name) }}" style="width: 100%; height: 180px; object-fit: cover; border-radius: 0; margin-bottom: 15px;">
                    <h4>{{ __($product->name) }}</h4>
                    @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                        <div class="price-old" style="text-decoration: line-through; font-size: 13px;">{{ home_base_price($product->id) }}</div>
                    @endif
                    <div class="price-new" style="font-size: 18px;">{{ home_discounted_base_price($product->id) }}</div>
                </a>
            @endforeach
        </div>
    </div>
</section>

<!-- بخش دسته‌بندی‌های کالا و خدمات لوکس -->
<!-- ============================================ -->
<section class="d-categories">
    <div class="container">
        <div class="section-heading">
            <span class="kicker">CATEGORIES</span>
            <h2>گنجینه‌ای از <span class="gold">زیباترین</span> محصولات</h2>
            <p>از انگشترهای نامزدی ظریف تا ساعت‌های کلکسیونی و الماس‌های کمیاب، هر آنچه از یک مارکت‌پلیس لوکس انتظار دارید.</p>
            <span class="divider-gold"></span>
        </div>
        <div class="d-cat-grid">
            <a href="{{ route('categories.all') }}" class="d-cat-card">
                <img src="{{ asset('frontend/images/alobi/ring.svg') }}" alt="حلقه" class="cat-ico" style="width:90px;height:90px;object-fit:contain;filter:drop-shadow(0 8px 20px rgba(197,160,89,0.4));">
                <h4>حلقه و انگشتر</h4>
                <span class="cat-count">۲,۴۰۰+ مدل</span>
            </a>
            <a href="{{ route('categories.all') }}" class="d-cat-card">
                <img src="{{ asset('frontend/images/alobi/necklace.svg') }}" alt="گردنبند" class="cat-ico" style="width:90px;height:90px;object-fit:contain;filter:drop-shadow(0 8px 20px rgba(197,160,89,0.4));">
                <h4>گردنبند و آویز</h4>
                <span class="cat-count">طلای ظریف</span>
            </a>
            <a href="{{ route('categories.all') }}" class="d-cat-card">
                <img src="{{ asset('frontend/images/alobi/watch.svg') }}" alt="ساعت" class="cat-ico" style="width:90px;height:90px;object-fit:contain;filter:drop-shadow(0 8px 20px rgba(197,160,89,0.4));">
                <h4>ساعت لوکس</h4>
                <span class="cat-count">رولکس، پتک و...</span>
            </a>
            <a href="{{ route('categories.all') }}" class="d-cat-card">
                <img src="{{ asset('frontend/images/alobi/diamond.svg') }}" alt="الماس" class="cat-ico" style="width:90px;height:90px;object-fit:contain;filter:drop-shadow(0 8px 20px rgba(197,160,89,0.4));">
                <h4>الماس و سنگ قیمتی</h4>
                <span class="cat-count">قیمتی و نیمه‌قیمتی</span>
            </a>
            <a href="{{ route('categories.all') }}" class="d-cat-card">
                <img src="{{ asset('frontend/images/alobi/crown.svg') }}" alt="تاج" class="cat-ico" style="width:90px;height:90px;object-fit:contain;filter:drop-shadow(0 8px 20px rgba(197,160,89,0.4));">
                <h4>کالای لوکس سلطنتی</h4>
                <span class="cat-count">کلکسیون ویژه</span>
            </a>
            <a href="{{ route('categories.all') }}" class="d-cat-card">
                <img src="{{ asset('frontend/images/alobi/coin.svg') }}" alt="سکه" class="cat-ico" style="width:90px;height:90px;object-fit:contain;filter:drop-shadow(0 8px 20px rgba(197,160,89,0.4));">
                <h4>شمش و سکه</h4>
                <span class="cat-count">سرمایه‌گذاری</span>
            </a>
            <a href="{{ route('categories.all') }}" class="d-cat-card">
                <img src="{{ asset('frontend/images/alobi/gift.svg') }}" alt="هدیه" class="cat-ico" style="width:90px;height:90px;object-fit:contain;filter:drop-shadow(0 8px 20px rgba(197,160,89,0.4));">
                <h4>پک هدیه لوکس</h4>
                <span class="cat-count">بسته‌بندی ویژه</span>
            </a>
            <a href="{{ route('categories.all') }}" class="d-cat-card">
                <img src="{{ asset('frontend/images/alobi/antique.svg') }}" alt="عتیقه" class="cat-ico" style="width:90px;height:90px;object-fit:contain;filter:drop-shadow(0 8px 20px rgba(197,160,89,0.4));">
                <h4>اشیاء عتیقه</h4>
                <span class="cat-count">کلکسیونرها</span>
            </a>
        </div>
    </div>
</section>

<!-- ============================================ -->
<!-- بخش شناسنامه و امنیت -->
<!-- ============================================ -->
 
<section class="d-trust">
    <div class="container">
        <div class="d-trust-inner">
            <div class="d-trust-content">
                <span class="kicker" style=" font-weight:700; letter-spacing:3px; font-size:13px;">
                    CERTIFICATE & SECURITY
                </span>
                <h2>
                    هر کالا، یک <span class="text-gold">شناسنامه معتبر</span>؛ آرامش خاطر شما
                </h2>
                <p style=" font-size:15px; line-height:2.1; margin-bottom:0;">
                    گواهی اصالت دیجیتال Alobi، سندی رسمی و غیرقابل جعل است که تمامی مشخصات فنی، جزئیات دقیق، متریال، برند و تاریخچه مالکیت کالا را در خود جای می‌دهد. هرگونه نقل و انتقال، تعمیر یا تغییر وضعیت در پرونده کالا به صورت دائمی ثبت می‌شود.
                </p>
                <div class="d-trust-features">
                    <div class="d-trust-feature">
                        <div class="tf-icon"><i class="la la-qrcode"></i></div>
                        <div>
                            <h5>QR-Code اختصاصی</h5>
                            <p>با اسکن کد روی هر شناسنامه، بلافاصله به صفحه استعلام هدایت می‌شوید.</p>
                        </div>
                    </div>
                    <div class="d-trust-feature">
                        <div class="tf-icon"><i class="la la-chain"></i></div>
                        <div>
                            <h5>تاریخچه شفاف</h5>
                            <p>تمام انتقالات مالکیت، تعمیرات و کارشناسی‌ها در بلوک‌زنجیره اختصاصی ثبت می‌شود.</p>
                        </div>
                    </div>
                    <div class="d-trust-feature">
                        <div class="tf-icon"><i class="la la-id-card"></i></div>
                        <div>
                            <h5>احراز هویت مالک</h5>
                            <p>هرگونه معامله یا انتقال با احراز هویت رسمی مالک انجام می‌شود.</p>
                        </div>
                    </div>
                    <div class="d-trust-feature">
                        <div class="tf-icon"><i class="la la-bell"></i></div>
                        <div>
                            <h5>هشدار سرقت لحظه‌ای</h5>
                            <p>در صورت اعلام سرقت، تمام همکاران و مراکز از ممنوع‌المعامله بودن کالا آگاه می‌شوند.</p>
                        </div>
                    </div>
                </div>
                <div style="margin-top:30px; display:flex; gap:12px; flex-wrap:wrap;">
                    <a href="{{ route('jewelry.certificates.verify_page') }}" class="btn-lux btn-lux-primary">
                        <i class="la la-search"></i> استعلام آنلاین شناسنامه
                    </a>
                    <a href="{{ route('jewelry.missing_reports.create_public') }}" class="btn-lux btn-lux-outline">
                        <i class="la la-bullhorn"></i> اعلام سرقت/مفقودی
                    </a>
                </div>
            </div>
            <div class="d-trust-visual">
                <div class="d-cert-mockup">
                    <div class="cert-head">
                        <h6>Certificate No. DRK</h6>
                        <h3>گواهی اصالت</h3>
                    </div>
                    <div class="cert-row"><span>محصول:</span><span>انگشتر الماس</span></div>
                    <div class="cert-row"><span>فلز:</span><span>طلای ۱۸ عیار</span></div>
                    <div class="cert-row"><span>وزن:</span><span>۸.۴ گرم</span></div>
                    <div class="cert-row"><span>سنگ:</span><span>الماس ۱.۲ قیراط</span></div>
                    <div class="cert-row"><span>مالک:</span><span>—</span></div>
                    <div class="cert-row"><span>تاریخ صدور:</span><span>۱۴۰۳/۰۶/۱۵</span></div>
                    <div class="cert-seal">DRIKANA<br>CERTIFIED</div>
                    <div class="cert-qr"></div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- 
<!-- ============================================ -->
<!-- استعلام شناسنامه CTA -->
<!-- ============================================ -->
<!-- <section class="d-verify-cta">
    <div class="container">
        <div class="d-verify-box">
            <div class="d-verify-icon"><i class="la la-certificate"></i></div>
            <h2>
                همین حالا <span class="text-gold">اصالت</span> کالا خود را بررسی کنید
            </h2>
            <p style=" margin:0;">
                با وارد کردن شماره سریال شناسنامه، از مشخصات، اصالت و وضعیت کالا خود مطلع شوید.
            </p>
            <form method="GET" action="{{ route('jewelry.certificates.verify_page') }}" class="d-verify-form">
                <input type="text" name="serial" placeholder="شماره سریال شناسنامه را وارد کنید..." required>
                <button type="submit"><i class="la la-search la-flip-horizontal"></i> استعلام کن</button>
            </form>
        </div>
    </div>
</section> -->

<!-- ============================================ -->
<!-- سوالات متداول -->
<!-- ============================================ -->
<section class="d-faq">
    <div class="container">
        <div class="section-heading">
            <span class="kicker">FAQ</span>
            <h2>سوالات <span class="gold">متداول</span></h2>
            <p>پاسخ به مهم‌ترین پرسش‌های شما درباره خرید طلا، شناسنامه و خدمات Alobi.</p>
            <span class="divider-gold"></span>
        </div>
        <div class="d-faq-list">
            <div class="d-faq-item open">
                <div class="d-faq-q">
                    <span>شناسنامه طلا چیست و چرا اهمیت دارد؟</span>
                    <i class="la la-angle-down"></i>
                </div>
                <div class="d-faq-a"><p>شناسنامه طلا سندی رسمی و دیجیتال است که مشخصات فنی کالا شامل وزن، عیار، نوع و مشخصات سنگ، مالک و تاریخچه آن را ثبت می‌کند. با شناسنامه، اصالت کالا قابل پیگیری و انتقال مالکیت به صورت شفاف و امن انجام می‌شود.</p></div>
            </div>
            <div class="d-faq-item">
                <div class="d-faq-q">
                    <span>چگونه از اصالت کالایی که می‌خرم مطمئن شوم؟</span>
                    <i class="la la-angle-down"></i>
                </div>
                <div class="d-faq-a"><p>تمام محصولات Alobi قبل از درج توسط کارشناسان رسمی ارزیابی شده و دارای شناسنامه معتبر با شماره سریال یکتا هستند. شما می‌توانید در هر لحظه با وارد کردن شماره سریال در صفحه «استعلام شناسنامه»، اصالت و وضعیت کالا را بررسی کنید.</p></div>
            </div>
            <div class="d-faq-item">
                <div class="d-faq-q">
                    <span>در صورت سرقت یا مفقودی طلا چه کار باید بکنم؟</span>
                    <i class="la la-angle-down"></i>
                </div>
                <div class="d-faq-a"><p>بلافاصله از پنل کاربری خود وارد بخش «اعلام سرقت/مفقودی» شوید و گزارش را ثبت کنید. کالا شما ظرف چند دقیقه در شبکه همکاران، مراکز خریدوفروش، تعمیرگاه‌ها و لیست ممنوع‌المعامله Alobi قرار می‌گیرد.</p></div>
            </div>
            <div class="d-faq-item">
                <div class="d-faq-q">
                    <span>آیا امکان فروش طلای کارکرده در Alobi وجود دارد؟</span>
                    <i class="la la-angle-down"></i>
                </div>
                <div class="d-faq-a"><p>بله. شما می‌توانید با ثبت‌نام به عنوان فروشنده یا از بخش «فروش طلای من» درخواست کارشناسی رایگان کالا خود را ثبت کنید. پس از ارزیابی توسط کارشناسان، کالا با شناسنامه جدید در مارکت‌پلیس عرضه می‌شود.</p></div>
            </div>
            <div class="d-faq-item">
                <div class="d-faq-q">
                    <span>شیوه ارسال قطعات گران‌بها چگونه است؟</span>
                    <i class="la la-angle-down"></i>
                </div>
                <div class="d-faq-a"><p>قطعات با ارزش بالا با بیمه کامل و اسکورت امنیتی به درب منزل شما ارسال می‌شوند. برای سفارش‌های معمولی نیز بسته‌بندی ایمن و بیمه شده توسط پست پیشتاز یا تیپاکس انجام می‌شود.</p></div>
            </div>
            <div class="d-faq-item">
                <div class="d-faq-q">
                    <span>هزینه صدور شناسنامه جدید چقدر است؟</span>
                    <i class="la la-angle-down"></i>
                </div>
                <div class="d-faq-a"><p>برای قطعاتی که از Alobi خریداری می‌شوند، صدور شناسنامه کاملاً رایگان است. برای قطعات متفرقه، هزینه کارشناسی و صدور شناسنامه بر اساس وزن و نوع کالا محاسبه می‌شود.</p></div>
            </div>
        </div>
    </div>
</section> 

<div id="section_best_sellers"></div>

<!-- ============================================ -->
<!-- اسکریپت‌های جاوااسکریپت -->
<!-- ============================================ -->
<script>
    // ===== اسکرول دسته‌بندی‌ها و برندها =====
    function setupScrollButtons(wrapperId, leftBtnId, rightBtnId) {
        const wrapper = document.getElementById(wrapperId);
        const leftBtn = document.getElementById(leftBtnId);
        const rightBtn = document.getElementById(rightBtnId);
        
        if (!wrapper) return;
        
        const scrollAmount = 280;
        
        if (leftBtn) {
            leftBtn.addEventListener('click', function() {
                wrapper.scrollBy({
                    left: -scrollAmount,
                    behavior: 'smooth'
                });
            });
        }
        
        if (rightBtn) {
            rightBtn.addEventListener('click', function() {
                wrapper.scrollBy({
                    left: scrollAmount,
                    behavior: 'smooth'
                });
            });
        }
    }
    
    setupScrollButtons('categoriesScrollWrapper', 'categoriesScrollLeft', 'categoriesScrollRight');
    setupScrollButtons('brandsScrollWrapper', 'brandsScrollLeft', 'brandsScrollRight');
    
    // ===== مگا منو - کنترل کامل با هاور و کلیک =====
    (function() {
        var megaTrigger = document.getElementById('megaMenuTrigger');
        var megaBtn = document.getElementById('megaMenuBtn');
        var megaItems = document.querySelectorAll('.mega-menu-item');
        var isMobile = window.innerWidth <= 992;
        
        // تابع برای تنظیم رویدادها بر اساس سایز صفحه
        function setupMegaMenu() {
            isMobile = window.innerWidth <= 992;
            
            if (isMobile) {
                // حالت موبایل - فقط کلیک
                megaTrigger.removeEventListener('mouseenter', onMouseEnter);
                megaTrigger.removeEventListener('mouseleave', onMouseLeave);
                
                if (megaBtn) {
                    megaBtn.addEventListener('click', function(e) {
                        e.preventDefault();
                        e.stopPropagation();
                        megaTrigger.classList.toggle('active');
                    });
                }
                
                // کلیک روی آیتم‌های دارای زیرمنو
                megaItems.forEach(function(item) {
                    var link = item.querySelector('.mega-menu-link');
                    var hasSubMenu = item.querySelector('.mega-sub-menu');
                    
                    if (link && hasSubMenu) {
                        link.removeEventListener('click', onItemClick);
                        link.addEventListener('click', onItemClick);
                    }

                    item.removeEventListener('mouseover', onItemMouseEnter);
                    item.removeEventListener('mouseleave', onItemMouseLeave);
                    item.classList.remove('active');
                });
            } else {
                // حالت دسکتاپ - هاور
                megaTrigger.addEventListener('mouseenter', onMouseEnter);
                megaTrigger.addEventListener('mouseleave', onMouseLeave);
                
                // حذف رویدادهای کلیک در دسکتاپ
                if (megaBtn) {
                    megaBtn.removeEventListener('click', function(e) {
                        e.preventDefault();
                        e.stopPropagation();
                        megaTrigger.classList.toggle('active');
                    });
                }
                
                megaItems.forEach(function(item) {
                    var link = item.querySelector('.mega-menu-link');
                    if (link) {
                        link.removeEventListener('click', onItemClick);
                    }

                    item.removeEventListener('mouseover', onItemMouseEnter);
                    item.removeEventListener('mouseleave', onItemMouseLeave);
                    item.addEventListener('mouseover', onItemMouseEnter);
                    item.addEventListener('mouseleave', onItemMouseLeave);
                });
            }
        }
        
        function setMobileSubmenuState(item, isOpen) {
            if (!item) return;
            if (isOpen) {
                item.classList.add('active');
            } else {
                item.classList.remove('active');
            }
        }

        function onMouseEnter() {
            this.classList.add('active');
        }
        
        function onMouseLeave() {
            this.classList.remove('active');
            megaItems.forEach(function(item) {
                item.classList.remove('active');
            });
        }

        function onItemMouseEnter() {
            megaItems.forEach(function(item) {
                item.classList.remove('active');
            });
            this.classList.add('active');
        }

        function onItemMouseLeave() {
            this.classList.remove('active');
        }
        
        function onItemClick(e) {
            if (window.innerWidth <= 992) {
                e.preventDefault();
                e.stopPropagation();
                var parent = this.closest('.mega-menu-item');
                if (parent) {
                    var hasSubMenu = parent.querySelector('.mega-sub-menu');
                    if (!hasSubMenu) {
                        // آیتم زیرمنو ندارد، صفحه را بارگذاری کن
                        window.location.href = this.href;
                        return;
                    }

                    // بستن تمام آیتم‌های دیگر
                    megaItems.forEach(function(other) {
                        if (other !== parent) {
                            other.classList.remove('active');
                        }
                    });

                    // تبدیل وضعیت آیتم فعلی
                    parent.classList.toggle('active');
                }
            }
        }
        
        // بستن منو با کلیک خارج
        document.addEventListener('click', function(e) {
            if (megaTrigger && !megaTrigger.contains(e.target)) {
                megaTrigger.classList.remove('active');
                megaItems.forEach(function(item) {
                    item.classList.remove('active');
                });
            }
        });
        
        // تنظیم مجدد در تغییر سایز
        window.addEventListener('resize', function() {
            setupMegaMenu();
            if (megaTrigger) {
                megaTrigger.classList.remove('active');
                megaItems.forEach(function(item) {
                    item.classList.remove('active');
                });
            }
        });
        
        // اجرای اولیه
        setupMegaMenu();
    })();
    
    // ===== بارگذاری بخش‌های داینامیک =====
    $(document).ready(function(){
        $.post('{{ route('home.section.featured') }}', {_token:'{{ csrf_token() }}'}, function(data){
            $('#section_featured').html(data);
            if(typeof slickInit === 'function') slickInit();
        });

        $.post('{{ route('home.section.best_selling') }}', {_token:'{{ csrf_token() }}'}, function(data){
            $('#section_best_selling').html(data);
            if(typeof slickInit === 'function') slickInit();
        });

        $.post('{{ route('home.section.home_categories') }}', {_token:'{{ csrf_token() }}'}, function(data){
            $('#section_home_categories').html(data);
            if(typeof slickInit === 'function') slickInit();
        });

        $.post('{{ route('home.section.best_sellers') }}', {_token:'{{ csrf_token() }}'}, function(data){
            $('#section_best_sellers').html(data);
            if(typeof slickInit === 'function') slickInit();
        });
    });
</script>

@endsection