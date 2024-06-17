pages << {
    url: "https://naivas.online",
    page_type: "category",
    http2: true,
    # fetch_type: "browser",
    method: "GET",
    # driver:{
    #     "name": "#{rand}",
    #     "code": "
    #         await.Puppeteer.LaunchAsync(new Launchoptions(){
    #             Headless: true,
    #             IgnoreHTTPSErrors: true
    #         })
    #     ",
    #     "goto_options": {
    #         "timeout": 0,
    #         "waitUntil": "domcontentloaded",
    #     },
    # }
    headers: {
    'Accept' => 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7',
    'Accept-Encoding' => 'gzip, deflate, br, zstd',
    'Accept-Language' => 'en-US,en;q=0.9,es;q=0.8',
    'Cache-Control' => 'no-cache',
    'Cookie' => '_ga=GA1.1.2061765279.1718198974; ...', # truncated for brevity
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
  verify: false 
}