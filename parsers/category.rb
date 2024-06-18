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
                'Accept-Language' => 'en-US,en;q=0.9',
                'Cookie' => '_ga_MRWW8LRT1C=GS1.1.1718515153.1.0.1718515153.0.0.0; _ga=GA1.1.822121844.1718515153; axeptio_cookies={%22$$token%22:%22t1v1w821zpyn4r5rvtwdd%22%2C%22$$date%22:%222024-06-16T05:19:22.179Z%22%2C%22$$cookiesVersion%22:{}%2C%22$$completed%22:false}; axeptio_authorized_vendors=%2C%2C; axeptio_all_vendors=%2C%2C; XSRF-TOKEN=eyJpdiI6IlJESllNNWErNlN0RTMwQ29qTTBMSHc9PSIsInZhbHVlIjoiYVVCWVZhZGp3UXk4NTBJcjVheXh5QXRnV2tEa3VDeEZ0OVBzRzBqcFhsbHpscmN1amxEMzdLVXR1TWphVWlaRGVsMnNWTXV0bmpkV0p3MGxrN2N3QkZHZWxrZlY4UmQzMDBZRkZycCtXRW16NVhnWWlFVkFtZURRSk5YK3h4bzgiLCJtYWMiOiJjYTAyNDViOTBkODUzMGUxYjE3MzA0M2JlYjkwNGU5ZmRjM2UzMmQ0ZmIwOTM3MWM5NzQwOTg5OGNjN2UxZGQyIiwidGFnIjoiIn0%3D; naivas_session=eyJpdiI6ImFnVTFYb3FtUkJlUTlXOVZ3RGtGRHc9PSIsInZhbHVlIjoibjVVNXAyNG9ISGtRbHBwd05ob3o4ZHFJVkx6T2pDMm4ySlI0S3NBcFhDa0hieWZMZFphS0ZTZzhPU3pwTWlsUVBwUkljVU5WV2x1MENkdlUvNmEwYWwzZ0pVS1Zub01yVHdJZmRHeFk3RWhEK3FlR09ZTmxYZ3dyS0E2Q1d4TEMiLCJtYWMiOiIzZmY1MjMxMjQ3YjM3YjU4YWVlZTRkYTNiOTk0ZTJkZTIwYjY3NmEyMTM4ZTBjNjM0MjlmNThkNDZmMzdhN2E0IiwidGFnIjoiIn0%3D',
                'Referer' => page['url'],
                'Sec-Fetch-Dest' => 'document',
                'Sec-Fetch-Mode' => 'navigate',
                'Sec-Fetch-Site' => 'same-origin',
                'Sec-Fetch-User' => '?1',
                'Upgrade-Insecure-Requests' => '1',
                'User-Agent' => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 OPR/110.0.0.0',
                'sec-ch-ua' => '"Chromium";v="124", "Opera";v="110", "Not-A.Brand";v="99"',
                'sec-ch-ua-mobile' => '?0',
                'sec-ch-ua-platform' => '"Windows"'
            },
            verify: false,
            vars: {
                category_name: cat_name,
                page: 1
            }
        } 
    end
end 