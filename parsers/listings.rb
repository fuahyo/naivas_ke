body = Nokogiri::HTML(content)
vars = page['vars']

listings = body.css('.border-naivas-bg')
count = 0
listings.each_with_index do |listing, index|
  product_name = listing.at_css('.text-black-50 a').text
  product_url = listing.at_css('.text-black-50 a')['href']
  # product_url = URI.join('https://naivas.online/#', listing['href']).to_s #listing.attr('href')
  pages << {
        url: product_url,
        method: "GET",
        page_type: 'details',
        headers: page['headers'],
        fetch_type: 'browser',
        vars: {
            rank: index + 1
        }.merge(vars)
    }
    count += 1
    save_outputs(outputs) if outputs.count > 99

end

# pagination
PRODUCT_PER_PAGE = 15

if vars['page'] == 1 && count == PRODUCT_PER_PAGE
    total_product = body.at('[v-if="!isLoading"]').text[/\d+/].to_i

    (2..(total_product/PRODUCT_PER_PAGE)).each do |pn|
        puts pn
        pages << {
            url: page['url'].gsub(/\?page=\d+/, "?page=#{pn}"),
            method: 'POST',
            fetch_type: 'browser',
            page_type: 'listings',
            priority: 500,
            headers: page['headers'],
            vars: vars.merge({
                "page" => pn,
            })
        }

    end
    
end
File.open("naivasCategories3.json","w") do |f|
    f.write(JSON.pretty_generate(pages))
end