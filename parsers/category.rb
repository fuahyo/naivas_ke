html = Nokogiri::HTML(content)

categories = html.css('.items-stretch a.text-sm')
# categories = html.css('.masonry a[class*="hover:text-naivas-green"]', '#mega-menu-full-dropdown-566 a')
categories.each do |cat|
    cat_name = cat.text.strip
    cat_url = cat.attr('href').to_s
    # next if cat_url.to_s.empty?

    if cat_url.to_s != ''
        pages << {
            url: 'https://naivas.online' + cat_url + "?page=1",
            method: 'POST',
            fetch_type: 'browser',
            priority: 500,
            page_type: 'listings',
            headers: {
                'Accept' => 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7',
                'Accept-Encoding' => 'gzip, deflate, br, zstd',
                'Accept-Language' => 'en-US,en;q=0.9,es;q=0.8',
                'Cache-Control' => 'no-cache',
                'Cookie' => '_ga=GA1.1.2061765279.1718198974;', # truncated for brevity
                'Pragma' => 'no-cache',
                'Priority' => 'u=0, i',
                'Referer' => 'https://www.google.com/',
                'Sec-Ch-Ua' => '"Google Chrome";v="125", "Chromium";v="125", "Not.A/Brand";v="24"',
                'Sec-Ch-Ua-Mobile' => '?0',
                'Sec-Ch-Ua-Platform' => '"macOS"',
                'Sec-Fetch-Dest' => 'document',
                'Sec-Fetch-Mode' => 'navigate',
                'Sec-Fetch-Site' => 'same-origin',
                'Sec-Fetch-User' => '?1',
                'Upgrade-Insecure-Requests' => '1',
                'User-Agent' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36'
            },
            verify: false,
            vars: {
                category_name: cat_name,
                page: 1
            }
        } 
    end
end 