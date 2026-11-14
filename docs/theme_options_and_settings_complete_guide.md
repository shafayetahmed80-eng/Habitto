# Habitto BD - থিম অপশন ও সেটিংস সেকশনের পূর্ণাঙ্গ মাস্টার ডকুমেন্টেশন

এই নথিতে Habitto BD ই-কমার্স ওয়েবসাইটের অ্যাডমিন প্যানেলের **Theme Options** (১৫টি সেকশন, ১২৫টি অপশন) এবং **Settings** (কোর, ই-কমার্স, পেমেন্ট ও সিস্টেম প্রশাসনসহ ৩৭+ সেকশন)-এর প্রতিটি ফিল্ড, ড্রপডাউন, চেকবক্স ও কনফিগারেশনের পুঙ্খানুপুঙ্খ বিবরণ দেওয়া হয়েছে।

---

# পর্ব ১: থিম অপশন (Theme Options)
**অ্যাক্সেস পথ:** `Admin Panel` > `Appearance` > `Theme Options` (`/admin/theme/options`)  
থিম অপশনে মোট ১৫টি উপ-বিভাগ রয়েছে। প্রতিটি বিভাগের প্রতিটি অপশনের বিবরণ নিচে দেওয়া হলো:

---

## ১. General (সাধারণ সেটিংস)
ওয়েবসাইটের বেসিক স্ট্রাকচার, হেডার আচরণ, প্রি-লোডার ও সাইটওয়াইড এসইও নির্ধারণের সেকশন।

1. **Enable sticky header? (`sticky_header_enabled`):**
   - *টাইপ:* ড্রপডাউন (Yes / No)
   - *কাজ:* ব্রাউজ করার সময় পেজ স্ক্রোল ডাউন করলে মূল হেডার মেনুটি স্ক্রিনের শীর্ষে আটকে (Sticky) থাকবে কিনা। 'Yes' দিলে ব্যবহারকারী যেকোনো সময় মেনু দেখতে পায়।
2. **Enable sticky header on mobile? (`sticky_header_mobile_enabled`):**
   - *টাইপ:* ড্রপডাউন (Yes / No)
   - *কাজ:* স্মার্টফোন/মোবাইল স্ক্রিনে হেডার স্টিকি থাকবে কিনা।
3. **Enable bottom menu on mobile? (`bottom_mobile_menu_enabled`):**
   - *টাইপ:* ড্রপডাউন (Yes / No)
   - *কাজ:* মোবাইল ব্যবহারকারীদের সুবিধার জন্য অ্যাপসের মতো নিচে একটি ফিক্সড বটম নেভিগেশন বার (Home, Shop, Wishlist, Cart, Account) দেখাবে কিনা।
4. **Show label for bottom menu item on mobile? (`bottom_mobile_menu_show_label`):**
   - *টাইপ:* ড্রপডাউন (Yes / No)
   - *কাজ:* বটম মেনুর আইকনের নিচে লেখার লেবেল (যেমন: "শপ", "কার্ট") প্রদর্শিত হবে কিনা।
5. **Hotline (`hotline`):**
   - *টাইপ:* টেক্সট ইনপুট
   - *কাজ:* হেডারের টপবারে প্রদর্শিত মূল হটলাইন/কাস্টমার কেয়ার ফোন নম্বর (যেমন: `017XXXXXXXX`)।
6. **404 Not found icon (`404_not_found_icon`):**
   - *টাইপ:* মিডিয়া ইমেজ আপলোড
   - *কাজ:* কোনো পেজ বা প্রোডাক্ট না পাওয়া গেলে (Error 404 পেজ) যে বিশেষ ইলাস্ট্রেশন বা ছবি প্রদর্শিত হবে।
7. **Enable Preloader? (`preloader_enabled`):**
   - *টাইপ:* ড্রপডাউন (Yes / No)
   - *কাজ:* পেজ লোড হওয়ার সময় একটি লোডিং অ্যানিমেশন (Spinner) দেখাবে কিনা।
8. **Preloader Version (`preloader_version`):**
   - *টাইপ:* ড্রপডাউন (v1 / v2)
   - *কাজ:* অ্যানিমেশনের ডিজাইন স্টাইল নির্বাচন।
9. **Site title (`site_title`):**
   - *টাইপ:* টেক্সট ইনপুট
   - *কাজ:* ওয়েবসাইটের মূল আনুষ্ঠানিক নাম (যেমন: *Habitto BD - Fashion & Lifestyle*)।
10. **Show site name after page title (`show_site_name`):**
    - *টাইপ:* ড্রপডাউন (0: No, 1: Yes)
    - *কাজ:* যেকোনো পেজের শিরোনামের শেষে স্বয়ংক্রিয়ভাবে সাইটের নাম যোগ হবে কিনা (যেমন: *Summer Panjabi Collection - Habitto BD*)।
11. **SEO title separator (`site_title_separator`):**
    - *টাইপ:* ড্রপডাউন (`-` অথবা `|`)
    - *কাজ:* পেজ টাইটেল এবং সাইটের নামের মাঝখানের ডিভাইডার চিহ্ন।
12. **SEO Title (`seo_title`):**
    - *টাইপ:* টেক্সট ইনপুট
    - *কাজ:* সার্চ ইঞ্জিনে হোমপেজের যে প্রধান মেটা টাইটেল প্রদর্শিত হবে (সর্বোচ্চ ৬০ অক্ষরের মধ্যে রাখা শ্রেয়)।
13. **SEO Description (`seo_description`):**
    - *টাইপ:* টেক্সট এরিয়া
    - *কাজ:* গুগল সার্চ ফলাফলে হোমপেজের নিচে প্রদর্শিত সংক্ষিপ্ত সারসংক্ষেপ (১৬০ অক্ষরের মধ্যে)।
14. **SEO Keywords (`seo_keywords`):**
    - *টাইপ:* ট্যাগ/কমা সেপারেটেড টেক্সট
    - *কাজ:* সাইটের মূল কি-ওয়ার্ডসমূহ (যেমন: *men fashion, panjabi, shirt, bangladesh ecommerce*)।
15. **SEO Index (`seo_index`):**
    - *টাইপ:* রেডিও বাটন (Index / No Index)
    - *কাজ:* সার্চ ইঞ্জিনকে সাইটটি ইনডেক্স করার অনুমতি দেওয়া। ডেভেলপমেন্টের সময় 'No Index' রাখা যায়, কিন্তু লাইভ সাইটে অবশ্যই **Index** রাখতে হবে।
16. **SEO default Open Graph image (`seo_og_image`):**
    - *টাইপ:* মিডিয়া ইমেজ আপলোড (কমপক্ষে 200x200 px, PNG বা JPG)
    - *কাজ:* ফেসবুক, মেসেঞ্জার বা হোয়াটসঅ্যাপে সাইটের লিংক শেয়ার করলে স্বয়ংক্রিয়ভাবে যে থাম্বনেইল প্রিভিউ হিসেবে শো করবে।
17. **Terms and Privacy Policy URL (`term_and_privacy_policy_url`):**
    - *টাইপ:* টেক্সট/লিংক ইনপুট
    - *কাজ:* টার্মস ও প্রাইভেসি পেজের লিংক (যেমন: `/terms-and-conditions`)।
18. **Date format (`date_format`):**
    - *টাইপ:* ড্রপডাউন (d-m-Y, Y-m-d, M d, Y ইত্যাদি)
    - *কাজ:* ফ্রন্টএন্ড ব্লগে বা রিভিউতে তারিখ প্রদর্শনের ফরম্যাট।

---

## ২. Styles (কালার ও স্টাইলিং)
সাইটের ব্র্যান্ডিং কালার, ফন্ট এবং হেডার/ফুটারের কালার নিয়ন্ত্রণ।

1. **Primary font (`primary_font`):**
   - *টাইপ:* Google Fonts সিলেক্টর (ডিফল্ট: *Jost*)
   - *কাজ:* পুরো ওয়েবসাইটের মূল লেখার ফন্ট।
2. **Primary color (`primary_color`):**
   - *টাইপ:* কালার পিকার (ডিফল্ট: `#d51243`)
   - *কাজ:* বাটন, ব্যাজ, লিংক হোভার ও অ্যাকসেন্ট কালার।
3. **Header style (`header_style`):**
   - *টাইপ:* ড্রপডাউন (Default / Centered logo / Collapsed)
   - *কাজ:* হেডারের লেআউট স্টাইল নির্ধারণ।
4. **Collapsing product categories on homepage? (`collapsing_product_categories_on_homepage`):**
   - *টাইপ:* ড্রপডাউন (Yes / No)
   - *কাজ:* হোমপেজে ক্যাটাগরি মেনু ডিফল্টভাবে ড্রপডাউন হয়ে খোলা থাকবে নাকি ক্লিক করলে খুলবে।
5. **Footer background color (`footer_background_color`):** ফুটারের ব্যাকগ্রাউন্ড কালার (ডিফল্ট: `#F8F8F8`)।
6. **Footer text color (`footer_text_color`):** ফুটারের মূল লেখার রং (`#000000`)।
7. **Footer text muted color (`footer_text_muted_color`):** ফুটারের সাব-টেক্সট ও উইজেট বর্ণনার কালার (`#686666`)।
8. **Footer border color (`footer_border_color`):** ফুটারের সেকশন ডিভাইডার বর্ডার কালার (`#E0E0E0`)।
9. **Footer bottom background color (`footer_bottom_background_color`):** ফুটারের সবচেয়ে নিচের কপিরাইট বারের ব্যাকগ্রাউন্ড কালার (`#ededed`)।
10. **Header background color (`header_background_color`):** হেডারের ব্যাকগ্রাউন্ড কালার (`#ffffff`)।
11. **Header text color (`header_text_color`):** হেডারের টেক্সট কালার (`#040404`)।
12. **Header menu text color (`header_menu_text_color`):** মূল মেনু আইটেমগুলোর লেখার কালার (`#040404`)।
13. **Header menu text hover color (`header_menu_text_hover_color`):** মেনুর উপরে মাউস নিলে যে কালার হবে (`#d51243`)।

---

## ৩. WhatsApp Control (হোয়াটসঅ্যাপ কন্ট্রোল)
Habitto BD-এর বিশেষ ফিচার, যা ওয়েবসাইট থেকে সরাসরি হোয়াটসঅ্যাপ অর্ডারিং এবং গ্রাহক সহায়তা নিয়ন্ত্রণ করে।

1. **Enable Floating Button? (`enable_whatsapp_floating_button`):**
   - *টাইপ:* ড্রপডাউন (Yes / No)
   - *কাজ:* ফ্রন্টএন্ডে ভাসমান (Floating) হোয়াটসঅ্যাপ বাটন চালু রাখবে কিনা।
2. **WhatsApp Number (`whatsapp_phone_number`):**
   - *টাইপ:* টেক্সট (যেমন: `88017XXXXXXXX`)
   - *কাজ:* কান্ট্রি কোড সহ যে নম্বরে কাস্টমারদের মেসেজ বা অর্ডার যাবে।
3. **Button Position (`whatsapp_floating_position`):**
   - *টাইপ:* ড্রপডাউন (Bottom Right: ডানপাশে নিচে / Bottom Left: বামপাশে নিচে)।
4. **Motion Animation Effect (`whatsapp_motion_effect`):**
   - *টাইপ:* ড্রপডাউন
   - *অপশনসমূহ:*
     - ১. *Radar Ripple & Ring:* রাডার তরঙ্গের মতো চারপাশে পালসিং তরঙ্গ ছড়াবে (উচ্চ কনভার্সনের জন্য সেরা)।
     - ২. *Gentle Float & Breathe:* শান্তভাবে উপরে-নিচে ভাসবে এবং মৃদু গ্লো করবে।
     - ৩. *Live Online Badge:* বাটনের ওপর উজ্জ্বল সবুজ পালসিং 'Online' নির্দেশক ডট থাকবে।
     - ৪. *Hover-Only Minimal:* শান্ত থাকবে, মাউস নিলে স্পিন ও গ্লো করবে।
5. **Default Welcome Message (`whatsapp_default_message`):**
   - *টাইপ:* টেক্সট ইনপুট
   - *কাজ:* বাটনে চাপ দিলে হোয়াটসঅ্যাপ অ্যাপে যে প্রাথমিক মেসেজটি স্বয়ংক্রিয়ভাবে টাইপ করা থাকবে (যেমন: *"Assalamu Alaikum Habitto BD! I need assistance with an order."*)।

---

## ৪. Page (পেজ সেটিংস)
1. **Page sidebar layout (`page_sidebar_layout`):** পেজের সাইডবার বামে থাকবে নাকি ডানে থাকবে তা নিয়ন্ত্রণ।
2. **Show breadcrumb on pages:** পেজের শিরোনামের সাথে নেভিগেশন পাথ দেখাবে কিনা।

---

## ৫. Breadcrumb (ব্রেডক্রাম্ব)
1. **Breadcrumb background color (`breadcrumb_background_color`):** ব্রেডক্রাম্ব বারের ব্যাকগ্রাউন্ড কালার (ডিফল্ট: `#F8F8F8`)।
2. **Breadcrumb background (`breadcrumb_background`):** ব্রেডক্রাম্ব সেকশনের পেছনে কোনো কাস্টম ব্যানার ইমেজ বসাতে চাইলে আপলোড অপশন।
3. **Show breadcrumb title:** পেজের নাম ব্রেডক্রাম্বে দেখাবে কিনা।

---

## ৬. Logo (লোগো সেটিংস)
1. **Logo (`logo`):** ওয়েবসাইটের মূল লোগো (স্বাভাবিক লাইট ব্যাকগ্রাউন্ডের জন্য)।
2. **Logo light (`logo_light`):** ডার্ক ব্যাকগ্রাউন্ড বা ট্রান্সপারেন্ট হেডারে ব্যবহারের উপযোগী সাদা/লাইট লোগো।
3. **Logo height in px (`logo_height`):** লোগোর উচ্চতা পিক্সেল এককে নির্ধারণ (ডিফল্ট: ৩৫px, রেঞ্জ: ০-১৫০px)।
4. **Favicon (`favicon`):** ব্রাউজার ট্যাবে প্রদর্শিত ছোট আইকন (16x16 বা 32x32 px ICO/PNG)।
5. **Mobile Logo:** মোবাইলের জন্য আলাদা সাইজের লোগো সেট করার অপশন।

---

## ৭. Facebook Integration (ফেসবুক ইন্টিগ্রেশন)
1. **Facebook App ID (`facebook_app_id`):** ফেসবুক অ্যাপ আইডি।
2. **Facebook Admins (`facebook_admins`):** কমেন্ট মডারেশন করার জন্য ফেসবুক অ্যাডমিন আইডি।
3. **Enable Facebook comments in products? (`facebook_comment_enabled_in_product`):** প্রোডাক্ট পেজে ফেসবুক কমেন্ট বক্স চালু করবে কিনা (Yes/No)।
4. **Facebook comment color scheme:** লাইট নাকি ডার্ক কালার স্কিম।
5. **Number of comments:** একবারে সর্বোচ্চ কয়টি ফেসবুক কমেন্ট প্রদর্শন করবে।

---

## ৮. Blog (ব্লগ সেটিংস)
1. **Blog page layout:** গ্রিড ভিউ নাকি লিস্ট ভিউতে ব্লগ পোস্ট প্রদর্শিত হবে।
2. **Number of posts per page:** প্রতি পেজে কয়টি ব্লগ পোস্ট দেখাবে (যেমন: ১২টি)।
3. **Enable author box:** ব্লগ পোস্টের নিচে লেখকের পরিচিতি দেখাবে কিনা।

---

## ৯. Ecommerce (ই-কমার্স থিম অপশনস)
ই-কমার্স স্টোরের ফ্রন্টএন্ড প্রদর্শনীর সবচেয়ে গুরুত্বপূর্ণ ২১টি কনফিগারেশন:

1. **Number of products per page (`number_of_products_per_page`):** শপ ও ক্যাটাগরি পেজে এক পৃষ্ঠায় মোট কয়টি পণ্য লোড হবে (ডিফল্ট: ১২)।
2. **Number of products per row on desktop (`number_of_products_per_row`):** কম্পিউটার স্ক্রিনে এক সারিতে কয়টি পণ্য দেখাবে (৩, ৪, ৫, বা ৬টি)।
3. **Number of products per row on mobile (`ecommerce_products_per_row_mobile`):** মোবাইল স্ক্রিনে এক সারিতে কয়টি পণ্য দেখাবে (১টি অথবা ২টি)।
4. **Products listing page layout (`ecommerce_products_page_layout`):** শপ পেজের ফিল্টার সাইডবার কোন পাশে থাকবে (Left sidebar / Right sidebar)।
5. **Default product items layout (`default_product_list_layout`):** প্রোডাক্ট ডিফল্টভাবে গ্রিড (Grid) আকারে দেখাবে নাকি লিস্ট (List) আকারে।
6. **Product gallery image style (`ecommerce_product_gallery_image_style`):** প্রোডাক্ট ডিটেইলস পেজের থাম্বনেইল ছবিগুলো খাড়াভাবে (Vertical) থাকবে নাকি অনুভূমিকভাবে (Horizontal)।
7. **Product gallery video position (`ecommerce_product_gallery_video_position`):** পণ্যের ভিডিও থাকলে তা ছবির আগে, মাঝে নাকি শেষে দেখাবে।
8. **Enable quick view button? (`enable_quick_view`):** প্রোডাক্ট কার্ডের ওপর ক্লিক না করে চটজলদি পপআপে দেখার "Quick View" আইকন সচল থাকবে কিনা (Yes / No)।
9. **Number of related products (`number_of_related_product`):** প্রোডাক্ট পেজের নিচে কয়টি সম্পর্কিত পণ্য সাজেস্ট করবে (ডিফল্ট: ৪)।
10. **Number of cross-sale products (`number_of_cross_sale_product`):** কার্ট পেজে কয়টি ক্রস-সেল পণ্য সুপারিশ করবে।
11. **Max price filter (`max_filter_price`):** প্রাইস স্লাইডারের সর্বোচ্চ রেঞ্জ (স্বয়ংক্রিয়ভাবে সর্বোচ্চ মূল্যের পণ্য থেকে নেয়)।
12. **Header sidebar categories limit (`ecommerce_header_categories_limit`):** হেডারের ক্যাটাগরি ড্রপডাউনে শুরুতে সর্বোচ্চ কয়টি ক্যাটাগরি সরাসরি দেখাবে (যেমন: ১০টি, বাকিগুলো "More Categories" এর নিচে থাকবে)।
13. **Display product categories select on header? (`display_product_categories_select_on_header`):** সার্চ বারের সাথে ক্যাটাগরি ড্রপডাউন সিলেক্টর দেখাবে কিনা।
14. **Display product categories on mobile menu? (`display_product_categories_on_mobile_menu`):** মোবাইলের সাইড ড্রয়ার মেনুতে ক্যাটাগরি ট্যাব আলাদা করে দেখাবে কিনা।
15. **Cart footer description (`cart_footer_description`):** কার্ট ড্রয়ারের নিচে প্রদর্শিত ছোট তথ্য বা নোটিস।
16. **Order tracking background (`order_tracking_background`):** অর্ডার ট্র্যাকিং পেজের কভার ছবি।
17. **Logo in the checkout page (`logo_in_the_checkout_page`):** মিনিমাল চেকআউট পেজে ব্যবহারের জন্য বিশেষ লোগো।
18. **Login background image (`login_background`):** কাস্টমার লগইন পেজের সাইড ব্যানার ছবি।
19. **Register background image (`register_background`):** কাস্টমার রেজিস্ট্রেশন পেজের ব্যানার ছবি।
20. **Merchant return policy URL (`merchant_return_policy_url`):** মার্চেন্ট রিটার্ন পলিসি লিংক।
21. **Merchant return days (`merchant_return_days`):** পণ্য ক্রয়ের কতদিনের মধ্যে রিটার্ন রিকোয়েস্ট গ্রহণযোগ্য (ডিফল্ট: ৩০ দিন)।

---

## ১০. Ecommerce URLs (ই-কমার্স পারমালিঙ্ক প্রিফিক্স)
গুগল এসইও-বান্ধব ইউআরএল তৈরির জন্য ১৭টি স্লাগ কনফিগারেশন:
- `products_prefix`: প্রোডাক্টের ইউআরএল প্রিফিক্স (যেমন: `/products/sample-shirt`)।
- `product_categories_prefix`: ক্যাটাগরি প্রিফিক্স (যেমন: `/product-categories/fashion`)।
- `product_tags_prefix`: ট্যাগ প্রিফিক্স (যেমন: `/product-tags/cotton`)।
- `product_brands_prefix`: ব্র্যান্ড প্রিফিক্স (যেমন: `/brands/habitto`)।
- `product_collections_prefix`: কালেকশন প্রিফিক্স (যেমন: `/product-collections/eid-exclusive`)।
- এছাড়া: `checkout_slug` (`/checkout`), `cart_slug` (`/cart`), `wishlist_slug` (`/wishlist`), `compare_slug` (`/compare`), `order_tracking_slug` (`/order-tracking`) ইত্যাদি।

---

## ১১. Ecommerce SEO (ই-কমার্স মেটা সেটিংস)
ই-কমার্স সংক্রান্ত প্রতিটি ভার্চুয়াল পেজের জন্য আলাদা আলাদা SEO Title এবং SEO Description লেখার ১৮টি অপশন:
- Shop Page SEO Title & Description
- Cart Page SEO Title & Description
- Checkout Page SEO Title & Description
- Order Tracking SEO Title & Description
- Wishlist & Compare SEO Title & Description
- Category, Brand ও Tag আর্কাইভের ফলব্যাক এসইও মেটাডাটা।

---

## ১২. Newsletter Popup (নিউজলেটার সাবস্ক্রিপশন পপআপ)
নতুন ভিজিটরদের ইমেইল সংগ্রহ করার চমৎকার লিড ম্যাগনেট।
1. **Enable Newsletter Popup (`newsletter_popup_enable`):** অন/অফ সুইচ।
2. **Popup Image (`newsletter_popup_image`):** পপআপে প্রদর্শিত আকর্ষণীয় অফার বা ডিসকাউন্টের ছবি।
3. **Popup Title (`newsletter_popup_title`):** প্রধান শিরোনাম (যেমন: *"প্রথম অর্ডারে ১০% ছাড় পান!"*)।
4. **Popup Subtitle (`newsletter_popup_subtitle`):** উপ-শিরোনাম (যেমন: *"আমাদের নিউজলেটারে সাবস্ক্রাইব করুন"*)।
5. **Popup Description (`newsletter_popup_description`):** বিস্তারিত শর্তাবলী।
6. **Popup Delay in seconds (`newsletter_popup_delay`):** ভিজিটর ওয়েবসাইটে প্রবেশের কত সেকেন্ড পর পপআপটি ভেসে উঠবে (যেমন: ৫ সেকেন্ড)।
7. **Display on pages (`newsletter_popup_display_pages`):** শুধুমাত্র হোমপেজে দেখাবে নাকি সব পেজে দেখাবে।

---

## ১৩. Social Sharing (সোশ্যাল শেয়ারিং বাটন)
প্রোডাক্ট এবং ব্লগের নিচে যে যে মাধ্যমে শেয়ার করার বাটন থাকবে তা সাজানোর রিপিটার:
- Facebook, WhatsApp, X (Twitter), Pinterest, LinkedIn, Telegram, Email।

---

## ১৪. Social Links (সোশ্যাল মিডিয়া চ্যানেল)
ফুটার ও টপবারে সোশ্যাল মিডিয়ার অফিসিয়াল পেজের লিংক যোগ করার রিপিটার:
- প্রতিটি আইটেমে: সোশ্যাল নেটওয়ার্কের নাম, আইকন (FontAwesome / Tabler) এবং প্রোফাইল লিঙ্ক (যেমন: `https://facebook.com/habittobd`)।

---

## ১৫. Cookie Consent (কুকি সম্মতি ব্যানার)
আন্তর্জাতিক গ্রাহক ও গুগল কমপ্লায়েন্সের জন্য কুকি ব্যানার:
1. **Enable cookie consent (`cookie_consent_enable`):** সচল রাখবেন কিনা (Yes / No)।
2. **Style (`cookie_consent_style`):** ফুল-উইডথ স্ট্রিপ নাকি মিনিমাল ফ্লোটিং বক্স।
3. **Message (`cookie_consent_message`):** প্রদর্শিত নোটিশ টেক্সট।
4. **Button text (`cookie_consent_button_text`):** সম্মতি বাটন টেক্সট (যেমন: *"Accept Cookies"* বা *"সম্মতি দিচ্ছি"*).
5. **Learn more URL & Text:** প্রাইভেসি পলিসির লিংক।
6. **Background & Text Color:** ব্যানারের ব্যাকগ্রাউন্ড ও লেখার রং।
7. **Show reject button:** কুকি প্রত্যাখ্যানের বাটন দেখাবে কিনা।
8. **Show customize preferences button:** কাস্টমাইজেশন বাটন (GDPR কমপ্লায়েন্ট)।

---
---

# পর্ব ২: অ্যাডমিন সেটিংস (Admin Settings)
**অ্যাক্সেস পথ:** `Admin Panel` > `Settings` (`/admin/settings`)  
সেটিংস সেকশনটি চারটি প্রধান গ্রুপে বিভক্ত:
1. **Common (কোর সেটিংস)**
2. **Ecommerce (ই-কমার্স সেটিংস)**
3. **Others (প্লাগইন ও ফিচার সেটিংস)**
4. **System (সিস্টেম প্রশাসন ও ব্যাকআপ)**

---

## গ্রুপ ১: সাধারণ ও কোর সেটিংস (Common Settings)

### ১. General Settings (`/admin/settings/general`)
- **Admin Email:** সাইট সংক্রান্ত যাবতীয় প্রশাসনিক ইমেইল নোটিফিকেশন গ্রহণের ঠিকানা।
- **Timezone:** সার্ভারের সময় অঞ্চল (বাংলাদেশের জন্য নির্বাচন করুন: `Asia/Dhaka`)।
- **Redirect all requests to HTTPS:** ওয়েবসাইটের সব ট্রাফিক স্বয়ংক্রিয়ভাবে নিরাপদ `https://` এ রিডাইরেক্ট করবে কিনা।
- **Default language:** ওয়েবসাইটের ডিফল্ট ভাষা।

### ২. Admin Appearance Settings (`/admin/settings/admin-appearance`)
অ্যাডমিন প্যানেলের নিজস্ব চেহারা নিয়ন্ত্রণ:
- **Admin Logo:** অ্যাডমিন প্যানেল হেডার এবং লগইন পেজের লোগো।
- **Admin Favicon:** অ্যাডমিনের জন্য ব্রাউজার ট্যাবের আইকন।
- **Admin Title:** ব্রাউজার ট্যাবে অ্যাডমিন প্যানেলের শিরোনাম (যেমন: *Habitto BD Administration*)।
- **Login screen background:** লগইন পেজের ব্যাকগ্রাউন্ড ওয়ালপেপার।
- **Admin theme mode:** অ্যাডমিন প্যানেলের ডিফল্ট মোড (Light, Dark, অথবা System)।
- **Admin Rich Editor:** টেক্সট এডিটর টাইপ (CkEditor অথবা TinyMCE)।
- **Custom Admin CSS & JS:** অ্যাডমিন প্যানেলে নিজস্ব কোনো সিএসএস বা স্ক্রিপ্ট প্রয়োগ করতে চাইলে।

### ৩. Email Settings (`/admin/settings/email`)
গ্রাহকদের অর্ডার নিশ্চিতকরণ, ডেলিভারি আপডেট এবং পাসওয়ার্ড রিসেট ইমেইল পাঠানোর কনফিগারেশন:
- **Mail Driver:** SMTP, Sendmail, Mailgun, Postmark, বা SES।
- **Mail Host:** যেমন: `smtp.gmail.com` বা আপনার বিজনেস মেইল হোস্ট।
- **Mail Port:** যেমন: `587` (TLS) অথবা `465` (SSL)।
- **Mail Encryption:** TLS অথবা SSL।
- **Mail Username:** আপনার ইমেইল অ্যাড্রেস।
- **Mail Password:** ইমেইলের অ্যাপ পাসওয়ার্ড।
- **Sender Name:** প্রেরকের নাম (যেমন: *Habitto BD*)।
- **Sender Email:** প্রেরকের ইমেইল (যেমন: *support@habittobd.com*)।
- **Send Test Email:** কনফিগারেশন সঠিক আছে কিনা যাচাই করতে ১-ক্লিকে টেস্ট ইমেইল পাঠানোর বাটন।

### ৪. Email Templates & Rules (`/admin/settings/email/templates`, `/email/rules`)
- **Email Templates:** প্রতিটি ইভেন্টের (Customer Registration, New Order, Order Canceled, Order Delivering, Password Reset) সুসজ্জিত ইমেইল টেমপ্লেট লাইভ প্রিভিউ সহ এডিট করার সুবিধা।
- **Email Rules:** স্প্যাম ও ভুয়া ইমেইল ডোমেইন ব্লক করার নিয়মাবলী।

### ৫. Media Settings (`/admin/settings/media`)
মিডিয়া ফাইল আপলোড ও স্টোরেজ ইঞ্জিন:
- **Media Driver:** `public` (লোকাল ড্রাইভ), `s3` (Amazon AWS), `do_spaces` (DigitalOcean), `wasabi`, অথবা `cloudinary`।
- **Chunk Upload:** বড় আকারের ছবি বা ফাইল টুকরো টুকরো করে নির্ভরযোগ্যভাবে আপলোড করার সুবিধা (Chunk size: যেমন ৫MB)।
- **Allowed MIME types:** কোন কোন ফরম্যাট আপলোড করা যাবে (jpg, png, webp, mp4, pdf, ইত্যাদি)।
- **Watermark Settings:**
  - *Enable watermark:* টিক দিলে আপলোড করা প্রতিটি পণ্যের ছবিতে লোগো বসে যাবে।
  - *Watermark Image:* ওয়াটারমার্কের স্বচ্ছ PNG ছবি।
  - *Position:* টপ-লেফট, টপ-রাইট, বটম-লেফট, বটম-রাইট বা সেন্টার।
  - *Opacity:* ওয়াটারমার্কের স্বচ্ছতা (যেমন: ৫০%)।
- **WebP & Image Compression:** স্বয়ংক্রিয়ভাবে ছবি কম্প্রেস করে গতি বৃদ্ধির সেটিংস।

### ৬. Website Tracking (`/admin/settings/website-tracking`)
মার্কেটিং ট্র্যাকিং কোড ও মেটা পিক্সেল এনহ্যান্সড ইন্টিগ্রেশন:
- **Google Analytics 4 ID:** `G-XXXXXXXXXX` মেজারমেন্ট আইডি।
- **Google Tag Manager (GTM):** `GTM-XXXXXX` কন্টেইনার কোড।
- **Meta (Facebook) Pixel Configuration:**
  - *Enable Facebook Pixel (`ecommerce_facebook_pixel_enabled`):* মেটা পিক্সেল চালু/বন্ধ টগল।
  - *Facebook Pixel ID (`ecommerce_facebook_pixel_id`):* মেটা ইভেন্টস ম্যানেজার থেকে প্রাপ্ত ১৫-১৬ ডিজিটের আইডি।
  - *Facebook Pixel Debug Mode (`ecommerce_facebook_pixel_debug_mode`):* ব্রাউজারের কনসোলে প্রতিটি ইভেন্টের (Client-Side ও Server-Side) লাইভ রঙিন ডাটা পর্যবেক্ষণ করার জন্য টগল।
  - *স্বয়ংক্রিয় স্ট্যান্ডার্ড ইভেন্ট:* `PageView`, `ViewContent`, `ViewCategory`, `Search`, `AddToCart`, `AddToWishlist`, `InitiateCheckout`, `AddPaymentInfo`, `Purchase` (অর্ডার আইডি ও বিক্রয়মূল্য সহ), `CompleteRegistration`, এবং `Lead`।
  - *সম্পূর্ণ নির্দেশিকা:* মেটা পিক্সেল সেটআপ ও ভেরিফিকেশনের পূর্ণাঙ্গ গাইডলাইন বিস্তারিত দেখুন [meta_pixel_tracking_verification_guide.md](file:///C:/Users/Shafayet%20Ahmed/.gemini/antigravity/brain/7d3f32ea-0e4b-41d2-9925-9ab94932d4b7/meta_pixel_tracking_verification_guide.md)।
- **Custom Header / Body Tracking Scripts:** গুগলের সার্চ কনসোল মেটা ট্যাগ, ফেসবুক ডোমেন ভেরিফিকেশন ট্যাগ, টিকটক পিক্সেল বা পিন্টারেস্ট ট্যাগ ইত্যাদি বসানোর নিরাপদ টেক্সট এরিয়া।

### ৭. Cache Settings & Management (`/admin/settings/cache`, `/admin/system/cache`)
- **Cache Driver:** File অথবা Redis।
- **Enable cache for admin menu?** অ্যাডমিন মেনুর দ্রুত লোডিং নিশ্চিত করতে ক্যাশ সক্রিয় করা।
- **Clear Cache Buttons:**
  - *Clear Application Cache:* সাইটের ডেটা ক্যাশ মোছা।
  - *Clear Config Cache:* সেটিং ফাইলের ক্যাশ মোছা।
  - *Clear Route Cache:* রুট ক্যাশ মোছা।
  - *Clear Compiled Views:* ফ্রন্টএন্ড ব্লেড টেমপ্লেটের ক্যাশ রিফ্রেশ করা।

### ৮. Permalink Settings (`/admin/settings/permalink`)
- পেজ, ব্লগ ও পণ্যের ইউআরএল প্রিফিক্স এবং স্ট্রাকচার কাস্টমাইজেশন।

### ৯. Sitemap Settings (`/admin/settings/sitemap`)
- **Enable XML Sitemap:** সাইটম্যাপ চালু রাখবে কিনা (URL: `/sitemap.xml`)।
- **Update Frequency:** ডেইলি, উইকলি বা মান্থলি।
- **IndexNow Protocol:** মাইক্রোসফট বিং ও ইয়ানডেক্স সার্চ ইঞ্জিনে নতুন প্রোডাক্ট আসার সাথে সাথে তাৎক্ষণিক পিং পাঠানোর এপিআই।

### ১০. DataTables Settings (`/admin/settings/datatables`)
- অ্যাডমিন প্যানেলে টেবিলের ডিফল্ট পেজিনেশন (১০, ২৫, ৫০, ১০০টি রেকর্ড একসাথে প্রদর্শন)।

---

## গ্রুপ ২: ই-কমার্স সেটিংস (Ecommerce Settings)
স্টোরের বাণিজ্যিক ও আর্থিক কার্যক্রমের ২১টি সেটিংস:

### ১. General Store Settings (`/admin/ecommerce/settings/general`)
- **Store Name:** স্টোরের নাম (*Habitto BD*)।
- **Store Phone:** কাস্টমার সার্ভিস নম্বর।
- **Store Email:** অফিশিয়াল ইমেইল।
- **Store VAT / Tax Number:** ভ্যাট ও ট্রেড লাইসেন্স নম্বর (চালানে প্রদর্শিত হয়)।
- **Store Address & City:** সেন্ট্রাল অফিস ও শোরুমের পূর্ণাঙ্গ ঠিকানা।

### ২. Currencies (`/admin/ecommerce/settings/currencies`)
- **Supported Currencies Table:**
  - *BDT (৳):* ডিফল্ট কারেন্সি (Exchange rate: 1.00)।
  - প্রয়োজন অনুযায়ী USD ($), EUR (€) ইত্যাদি যুক্ত করা যায়।
- **Currency Settings:**
  - *Symbol position:* ডান পাশে (Right) নাকি বাম পাশে (Left - যেমন: `৳১,২০০` বা `১,২০০ ৳`)।
  - *Number of decimals:* দশমিকের পর কয় ঘর দেখাবে (সাধারণত BDT-তে ০ ঘর রাখা সুবিধাজনক)।
  - *Thousand separator:* হাজারের ডিভাইডার কমা (`,`)।
  - *Decimal separator:* দশমিকের ডট (`.`)।
  - *Auto-update exchange rate:* অনলাইন এপিআই থেকে প্রতিদিনের মুদ্রা বিনিময় হার স্বয়ংক্রিয়ভাবে আপডেট করার সুবিধা।

### ৩. Store Locators / Warehouses (`/admin/ecommerce/settings/store-locators`)
- প্রধান ওয়্যারহাউস ও ডিপোর ঠিকানা। একাধিক আউটলেট বা শোরুম থাকলে তাদের আলাদা তালিকা তৈরি করা যায়, যেখান থেকে শিপমেন্ট জেনারেট হবে।

### ৪. Products Settings (`/admin/ecommerce/settings/products`)
- **Display out of stock products:** স্টক শেষ হয়ে যাওয়া পণ্য শপ পেজে দেখাবে নাকি লুকিয়ে রাখবে।
- **Auto generate SKU:** নতুন পণ্য তৈরির সময় স্বয়ংক্রিয়ভাবে SKU তৈরি হবে কিনা।
- **SKU Format:** SKU এর ফরম্যাট (যেমন: `HBT-%NUMBER%`)।
- **Enable Product Reviews:** রিভিউ ফিচার অন/অফ।
- **Customer must purchase to review:** শুধুমাত্র প্রকৃত ক্রেতারা রিভিউ দিতে পারবে কিনা।
- **Auto-approve reviews:** কাস্টমারের রিভিউ স্বয়ংক্রিয়ভাবে সাইটে দৃশ্যমান হবে নাকি অ্যাডমিন অ্যাপ্রুভালের অপেক্ষায় থাকবে।
- **Maximum review images:** রিভিউতে কাস্টমার সর্বোচ্চ কয়টি ছবি আপলোড করতে পারবে (যেমন: ৫টি)।

### ৫. Product Search Settings (`/admin/ecommerce/settings/product-search`)
- **Search by SKU / Brand / Tags:** সার্চ বারে SKU কোড, ব্র্যান্ডের নাম বা ট্যাগ দিয়ে খুঁজলে পণ্য পাওয়া যাবে কিনা।
- **Enable search filters:** ক্যাটাগরি, সাইজ, কালার ও প্রাইস দিয়ে ফিল্টারিং অন/অফ।

### ৬. Digital Products Settings (`/admin/ecommerce/settings/digital-products`)
- ডিজিটাল পণ্য ও সফটওয়্যার কি বিক্রির সক্রিয়তা।
- ডাউনলোড লিংক মেয়াদের দিনসংখ্যা (যেমন: ৭ দিন পর লিংক অকার্যকর হবে)।
- সর্বোচ্চ ডাউনলোড লিমিট (যেমন: ৩ বার)।

### ৭. Shopping & Cart Settings (`/admin/ecommerce/settings/shopping`)
- **Shopping Cart Enabled:** কার্ট সিস্টেম চালু থাকবে কিনা।
- **Wishlist Enabled:** পছন্দের পণ্যের তালিকা (Wishlist) অন/অফ।
- **Compare Enabled:** পণ্য তুলনা (Compare) অন/অফ।
- **Cart Persistent Lifetime:** কাস্টমারের ব্রাউজারে কার্টের পণ্য কতদিন সংরক্ষিত থাকবে।

### ৮. Checkout Settings (`/admin/ecommerce/settings/checkout`)
- **Enable guest checkout?** অ্যাকাউন্ট ছাড়া সরাসরি নাম-ঠিকানা দিয়ে দ্রুত অর্ডার করার সুবিধা (বাংলাদেশে দ্রুত সেলসের জন্য অত্যন্ত কার্যকর)।
- **Required fields:** চেকআউটে কোন কোন তথ্য বাধ্যতামূলক (Phone, Address, City)।
- **Display terms and policy agreement:** অর্ডারের সময় "টার্মস ও শর্তাবলীতে সম্মত" চেকবক্স দেখানো।
- **Minimum order amount:** স্টোরে সর্বনিম্ন কত টাকার অর্ডার গ্রহণ করা হবে।

### ৯. Return & Refund Settings (`/admin/ecommerce/settings/return`)
- **Allow customer return request:** কাস্টমার তার অ্যাকাউন্ট থেকে রিটার্ন রিকোয়েস্ট পাঠাতে পারবে কিনা।
- **Return window:** ডেলিভারির কত দিনের মধ্যে রিটার্ন রিকোয়েস্ট পাঠানো যাবে (যেমন: ৭ দিন)।
- **Return reasons list:** ত্রুটিপূর্ণ পণ্য, সাইজ সমস্যা ইত্যাদি রিটার্নের কারণগুলোর তালিকা।

### ১০. Invoices & Templates (`/admin/ecommerce/settings/invoices`)
- **Invoice Prefix:** রসিদ নম্বরের প্রিফিক্স (যেমন: `#INV-`)।
- **Auto generate invoice on order placed:** অর্ডার কনফার্ম হওয়ার সাথে সাথে অটো চালান তৈরি।
- **Invoice Template:** সম্পূর্ণ এডিটেবল HTML/CSS ইনভয়েস টেমপ্লেট। স্টোরের লোগো, স্বাক্ষর ও টার্মস যুক্ত করার সুবিধা।
- **Shipping Label Template:** পার্সেলের গায়ে লাগানোর জন্য বারকোড সম্বলিত থার্মাল শিপিং লেবেল ডিজাইন এডিটর।

### ১১. Tax Settings (`/admin/ecommerce/settings/taxes`)
- **Enable Tax / VAT:** ভ্যাট ট্যাক্স হিসাব চালু বা বন্ধ।
- **Prices display inclusive of tax:** প্রদর্শিত পণ্যের মূল্যের ভেতর ভ্যাট অন্তর্ভুক্ত কিনা।

### ১২. Customer Settings (`/admin/ecommerce/settings/customers`)
- **Verify customer email:** কাস্টমার একাউন্ট খোলার পর ইমেইল ভেরিফিকেশন বাধ্যতামূলক কিনা।
- **Login using phone or email:** ইমেইলের পাশাপাশি মোবাইল নম্বর দিয়েও কাস্টমার লগইন করতে পারবে কিনা।

### ১৩. Shipping Settings (`/admin/ecommerce/settings/shipping`)
লজিস্টিকস ও কুরিয়ার ডেলিভারি চার্জ নির্ধারণ:
- **Inside Dhaka (ঢাকার ভেতরে):** ফ্ল্যাট ৳৭০.০০
- **Outside Dhaka (ঢাকার বাইরে):** ফ্ল্যাট ৳১৩০.০০
- **Free Delivery Threshold:** ৳২,০০০.০০ বা তদূর্ধ্ব অর্ডারে স্বয়ংক্রিয়ভাবে ফ্রি শিপিং।
- **Shippo Integration:** অটোমেটেড কুরিয়ার ট্র্যাকিং এপিআই কনফিগারেশন।

### ১৪. Webhook Settings (`/admin/ecommerce/settings/webhook`)
- স্টোরের সাথে কুরিয়ার কোম্পানি বা থার্ড-পার্টি ইআরপি সফটওয়্যার যুক্ত করতে Webhook URL ও Secret Key প্রদান।
- নতুন অর্ডার আসা বা স্ট্যাটাস পরিবর্তনের সাথে সাথে স্বয়ংক্রিয় ডাটা পুশ নোটিফিকেশন।

### ১৫. Standard & Format (`/admin/ecommerce/settings/standard-and-format`)
- **Weight Unit:** কিলোগ্রাম (kg) অথবা গ্রাম (g)।
- **Dimension Unit:** সেন্টিমিটার (cm) অথবা ইঞ্চি (inch)।

### ১৬. Flash Sale Settings (`/admin/ecommerce/settings/flash-sale`)
- ফ্ল্যাশ সেল ব্যানারের ডিসপ্লে স্টাইল, কাউন্টডাউন টাইমার ও স্টক অগ্রগতি বার (Progress Bar) কাস্টমাইজেশন।

---

## গ্রুপ ৩: পেমেন্ট ও অন্যান্য প্লাগইন সেটিংস (Plugins Settings)

### ১. Payment Methods (`/admin/settings/payment-methods`)
- **Cash on Delivery (COD):** ক্যাশ অন ডেলিভারি অন/অফ, গ্রাহকের নির্দেশিকা ও অতিরিক্ত চার্জের অপশন।
- **Bank Transfer:** ব্যাংক অ্যাকাউন্টের নাম, নম্বর, ব্যাংকের নাম, ব্রাঞ্চ এবং পেমেন্টের পর ট্রানজাকশন আইডি পাঠানোর নিয়মাবলী।
- **SSLCommerz (বাংলাদেশি গেটওয়ে):**
  - *Status:* সচল/বন্ধ।
  - *Store ID & Store Password:* এসএসএলকমার্জ থেকে প্রাপ্ত ক্রেডেনশিয়াল।
  - *Sandbox Mode:* টেস্টিংয়ের জন্য চালু রাখা, লাইভ ট্রানজাকশনের জন্য বন্ধ করা।
- **Stripe:** আন্তর্জাতিক কার্ড পেমেন্টের জন্য Publishable Key এবং Secret Key।
- **PayPal:** ক্লায়েন্ট আইডি ও সিক্রেট।
- **Razorpay, Paystack, Mollie:** অন্যান্য রিজিওনাল গেটওয়ের এপিআই সেটিংস।

### ২. Social Login Settings (`/admin/settings/social-login`)
কাস্টমারদের ফেসবুক বা গুগল দিয়ে ১-ক্লিকে লগইন ও সাইন-আপ করার ব্যবস্থা:
- **Google OAuth:** Client ID ও Client Secret।
- **Facebook Login:** App ID ও App Secret।
- **GitHub OAuth:** Client ID ও Secret।

### ৩. Captcha Settings (`/admin/settings/captcha`)
বট আক্রমণ ও ভুয়া অর্ডার প্রতিরোধে সিকিউরিটি ক্যাপচা:
- **Captcha Provider:** Google reCAPTCHA v2 (Checkbox), reCAPTCHA v3 (Invisible), অথবা Cloudflare Turnstile।
- **Site Key & Secret Key:** প্রদান করার ইনপুট।
- **Enable on forms:** কাস্টমার রেজিস্ট্রেশন, লগইন, কন্টাক্ট ফর্ম বা চেকআউটে ক্যাপচা সচল করার স্বতন্ত্র চেকবক্স।

### ৪. Sale Popup Settings (`/admin/settings/sale-popup`)
ফ্রন্টএন্ডে সোশ্যাল প্রুফ বৃদ্ধির লাইভ সেলস নোটিফিকেশন পপআপ:
- **Status:** সচল/বন্ধ।
- **Popup Interval:** কত সেকেন্ড পর পর নতুন পপআপ ভেসে উঠবে (যেমন: ১০-২০ সেকেন্ড)।
- **Display Duration:** স্ক্রিনে কতক্ষণ পপআপ দৃশ্যমান থাকবে (যেমন: ৫ সেকেন্ড)।
- **Templates:** কাস্টমারের নাম, শহর ও ক্রয়কৃত পণ্যের প্রিভিউ স্টাইল।
- **Hide on Mobile:** মোবাইলে স্ক্রিন যাতে জ্যাম না হয় সেজন্য মোবাইল ব্রাউজারে এটি লুকিয়ে রাখার অপশন।

### ৫. Announcement Bar Settings (`/admin/announcements/settings`)
ওয়েবসাইটের শীর্ষের নোটিশ বারের ডিজাইন:
- **Font Size & Unit:** লেখার সাইজ (যেমন: `14px`)।
- **Background & Text Color:** নোটিশ বারের ব্যাকগ্রাউন্ড কালার ও লেখার কালার।
- **Dismissible:** কাস্টমার চাইলে ক্লোজ (X) বাটনে ক্লিক করে নোটিশটি বন্ধ করতে পারবে কিনা।
- **Autoplay & Delay:** একাধিক ঘোষণা থাকলে কতক্ষণ পর পর স্লাইড করবে।
- **Hide on mobile:** মোবাইলে নোটিশ বার লুকানোর অপশন।

### ৬. Ads Settings (`/admin/settings/ads`)
- **Google AdSense Mode:** Auto Ads অথবা Unit Ads।
- **AdSense Snippet:** গুগলের হেড স্ক্রিপ্ট কোড।
- **ads.txt Editor:** অ্যাডসেন্স একাউন্ট অথেনটিকেশনের জন্য ব্রাউজার থেকেই `ads.txt` ফাইল এডিট বা আপলোড করার সুবিধা।

### ৭. Contact Form Settings (`/admin/settings/contact`)
- **Receiver Emails:** "Contact Us" পেজে কাস্টমারদের পাঠানো মেসেজগুলো কোন ইমেইলে যাবে তা নির্ধারণ।
- **Blacklisted Keywords:** স্প্যাম মেসেজ আটকাতে নির্দিষ্ট শব্দের ব্ল্যাকলিস্ট (কমা দিয়ে একাধিক শব্দ)।

---

## গ্রুপ ৪: সিস্টেম প্রশাসন ও ব্যাকআপ (System Platform Settings)

### ১. Cache Management (`/admin/system/cache`)
- লাইভ সার্ভারে কোনো প্রোডাক্টের প্রাইস বা থিম অপশন পরিবর্তনের পর ওয়েবসাইটে না দেখা গেলে এক ক্লিকে **Clear All Cache** দিয়ে মেমরি ফ্রেশ করা।

### ২. System Cleanup (`/admin/system/cleanup`)
- অপ্রয়োজনীয় টেম্পোরারি ফাইল, ব্যর্থ ব্যাকআপের খণ্ডাংশ বা অনাথ ডাটা মুছে ডেটাবেস সাইজ হালকা রাখা।

### ৩. System Information (`/admin/system/info`)
- সার্ভার পরিবেশের সামগ্রিক ডায়াগনস্টিক রিপোর্ট:
  - PHP Version (PHP 8.2+)
  - Web Server (Apache/Nginx)
  - MySQL Database Version
  - PHP Extensions (cURL, OpenSSL, PDO, GD/Imagick, Fileinfo)
  - Storage & Cache Directory Permissions (Writable/Read-only)

### ৪. Cronjob Settings (`/admin/system/cronjob`)
- স্বয়ংক্রিয় কাজের শিডিউল (প্রতিদিন পরিত্যক্ত কার্টের ইমেইল পাঠানো, মেয়াদোত্তীর্ণ লগ ডিলিট করা, মুদ্রা বিনিময় হার আপডেট করা)।

---

## দৈনন্দিন ব্যবহারের জন্য গুরুত্বপূর্ণ শর্টকাট গাইড (Cheat-Sheet)

| পরিবর্তন করতে চাইলে | যে সেকশনে যাবেন |
| :--- | :--- |
| **লোগো ও ফেভিকন পরিবর্তন** | `Appearance` > `Theme Options` > `Logo` |
| **হোয়াটসঅ্যাপ নম্বর ও মোশন বাটন** | `Appearance` > `Theme Options` > `WhatsApp Control` |
| **ব্র্যান্ড কালার ও ফন্ট পরিবর্তন** | `Appearance` > `Theme Options` > `Styles` |
| **টপবার হটলাইন নম্বর বদলানো** | `Appearance` > `Theme Options` > `General` |
| **হোমপেজের স্লাইডার পরিবর্তন** | `Simple Sliders` |
| **ঢাকার ভেতরে ও বাইরে ডেলিভারি চার্জ** | `Settings` > `Ecommerce` > `Shipping` |
| **বিকাশ/নগদ (SSLCommerz) গেটওয়ে** | `Settings` > `Payment Methods` |
| **গুগল ও মেটা পিক্সেল কোড বসানো** | `Settings` > `Website Tracking` |
| **সাইটের নাম ও অ্যাডমিন ইমেইল** | `Settings` > `General` |
| **চালান/ইনভয়েস কোম্পানির নাম ও ঠিকানা** | `Settings` > `Ecommerce` > `General` |
| **গুগল বা ফেসবুক দিয়ে কাস্টমার লগইন** | `Settings` > `Social Login` |
| **পরিবর্তনের পর ওয়েবসাইটে না দেখালে** | `Administration` > `Cache Management` > `Clear Cache` |

---
*ডকুমেন্টটি Habitto BD কোডবেসের প্রতিটি সেটিং ও থিম অপশন ফিল্ডের সরাসরি অনুসন্ধানের ভিত্তিতে প্রস্তুত করা হয়েছে।*
