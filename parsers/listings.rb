body = Nokogiri::HTML(content)
vars = page['vars']
category_id = body.css('.facet ul.faceted-checkbox.collapse')&.attr('id')&.text&.gsub('facet_','')
# require 'byebug'; byebug
count = 0
body.css('.product-list .products .product-miniature').each_with_index do |prod, idx|
    prod_url = prod.css('a').attr('href').text
    pages << {
        url: prod_url,
        method: "GET",
        page_type: 'details',
        headers: page['headers'],
        fetch_type: 'browser',
        vars: {
            category_id: category_id,
            rank: idx+1
        }.merge(vars)
    }
    count += 1
    save_outputs(outputs) if outputs.count > 99
end

if page['url'].include?('?page=1') && count >= 12
    total_product = body.at('.total-products').text
    next_page = vars['page'] + 1

    pages << {
        url: page['url'].gsub(/\?page=\d+/, "?page=#{next_page}"),
        method: 'POST',
        fetch_type: 'browser',
        page_type: 'listings',
        priority: 500,
        headers: page['headers'],
        vars: vars.merge({
            "page" => vars['page'] + 1,
        })
    }
end