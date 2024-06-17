html = Nokogiri::HTML(content)

categories = html.css('.masonry a[class*="hover:text-naivas-green"]', '#mega-menu-full-dropdown-566 a')
categories.each do |cat|
    cat_name = cat.text.strip
    cat_url = cat.attr('href').to_s
    next if cat_url.to_s.empty?

    if cat_url.to_s != ''
        pages << {
            url: 'https://naivas.online' + cat_url + "?page=1",
            method: 'POST',
            # fetch_type: 'browser',
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
            verify: false,
            vars: {
                category_name: cat_name,
                page: 1
            }
        } 
    end
end 