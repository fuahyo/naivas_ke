html = Nokogiri::HTML(content)

categories = html.css('.main-content .container .block')
categories.each do |cat|
    # require 'byebug'; byebug
    cat_url = cat.css('.title-block a').attr('href').text
    cat_name = cat.css('.title-block a').first.text
    pages << {
        url: cat_url + "?page=1",
        method: 'POST',
        fetch_type: 'browser',
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
