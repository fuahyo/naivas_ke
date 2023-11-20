html = Nokogiri::HTML(content)
vars = page['vars']
product = html.css('.main-product-details.shadow-box md-bottom')

name = product.css('h1.page-heading').text
brand = product.css('.product-attributes .product-manufacturer a').text
id = product.css('.product-attributes .product-reference').text
ean = product.css('.product-attributes .product-specific-references.ean13').text
img_url = html.css('.img-fluid').attr('src').text

availability = html.css('span#product-availability').text
if availability == "In Stock"
    is_available = true
else
    is_available = false
end

price = html.css('span.current-price').text

out = {
    '_collection' => 'products',
    '_id' => "#{id.to_s}",
    'competitor_name' => 'Naivas - Nairobi',
    'competitor_type' => 'dmart',
    'store_name' => "Naivas",
    'store_id' => 2, #Delivery mode to address 20100
    'country_iso' => 'KE',
    'language' => 'FRR',
    'currency_code_lc' => 'MAD',
    'scraped_at_timestamp' => ((ENV['needs_reparse'] == 1 || ENV['needs_reparse'] == "1") ? (Time.parse(page['fetched_at']) + 1).strftime('%Y-%m-%d %H:%M:%S') : Time.parse(page['fetched_at']).strftime('%Y-%m-%d %H:%M:%S')),
    'competitor_product_id' => id,
    'name' => name,
    'brand' => brand,
    'category_id' => vars['category_id'],
    'category' => category, #don't forget to change this category name
    'sub_category' => sub_category,
    'customer_price_lc' => customer_price_lc,
    'base_price_lc' => base_price_lc,
    'has_discount' => has_discount,
    'discount_percentage' => percentage,
    'rank_in_listing' => vars['rank'],
    'page_number' => 1,
    'product_pieces' => product_pieces,
    'size_std' => size_std,
    'size_unit_std' => size_unit_std,
    'description' => description,
    'img_url'=> img_url,
    'barcode'=> ean,
    'sku'=> id,
    'url'=> url.gsub(/\/n$/,''),
    'is_available' => is_available,
    'crawled_source'=>'WEB',
    'is_promoted' => is_promoted,
    'type_of_promotion' => type_of_promotion,
    'promo_attributes' => promo_attributes,
    'is_private_label' => is_private_label,
    'latitude' => nil,
    'longitude' => nil,
    'reviews' => nil,
    'store_reviews'=> nil,
    'item_attributes'=> nil,
    'item_identifiers'=> {"barcode":"#{ean}"}.to_json,
    'country_of_origin'=> nil,
    'variants'=> nil,
}
outputs << out
