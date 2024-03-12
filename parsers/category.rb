html = Nokogiri::HTML(content)

categories = html.css('.mm_block_type_category span.h4 a')
categories.each do |cat|
    # require 'byebug'; byebug
    cat_url = cat.attr('href')
    cat_name = cat.text
    pages << {
        url: cat_url + "?page=1",
        method: 'POST',
        fetch_type: 'browser',
        priority: 500,
        page_type: 'listings',
        headers: {
            'User-Agent' => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',
            'Accept-Encoding' => 'gzip, deflate, br',
            'Accept-Language' => 'en-US,en;q=0.9',
            'Cache-Control' => 'max-age=0',
            'Accept' => 'application/json, text/javascript, */*; q=0.01',
            'Origin' => 'https://naivas.online/',
            'Referer' => 'https://naivas.online/addresses',
            'X-Requested-With' => 'XMLHttpRequest',
            'Upgrade-Insecure-Requests' => 1
        },
        vars: {
            category_name: cat_name,
            page: 1
        }
    }
end
