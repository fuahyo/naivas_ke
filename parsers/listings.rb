body = Nokogiri::HTML(content)
vars = page['vars']
category_id = body.css('.facet ul.faceted-checkbox.collapse').attr('id').text.gsub('facet_','')
# require 'byebug'; byebug
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
end