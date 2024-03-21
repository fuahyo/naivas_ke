pages << {
    url: "https://naivas.online/kiambu-road/?automatic_redirect=1",
    page_type: "category",
    hhtp2: true,
    fetch_type: "browser",
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
        'Host' => 'naivas.online',
        'User-Agent' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36',
        'Accept-Encoding' => 'gzip, deflate, br, zstd',
        'Accept-Language' => 'en-US,en;q=0.9',
        'Cache-Control' => 'max-age=0',
        'Accept' => 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7',
        # 'X-Requested-With' => 'XMLHttpRequest',
        'Upgrade-Insecure-Requests' => 1,
        'Cookie' => 'PrestaShop-8f2dfb2334c0f1c63b04a6da73967677=def50200989f5fb44a6f56f9c2a5ef1b4cf18891d91a678dbc93429e8bd9df1a8c68549df9e71122850333f01af616c46a835a4dcf1e5b8808430009803f3c208ba615992f923e68dfdb02cc457bbb2db476c8def49d327937a43f778bdb920ca226e26f588bf9f53b1e08383394d588879ed067bc55a9cf46b776aeb17862b83003b5377ecdf8e05e72c9c7d3a4b256dc8b31314ed9040e6c16df74749c986b80add4d5fffbc65b05d2b1762aac2f930fa3ff9266dbfd082ae72aedc629a96a3cb057efa72dd5e386619598d03d103fef27851b0d73b4e631942490a1e56fb165aee4d19d5e37f085637acc4aac0d; PrestaShop-9059057ef5230aa86f96531d028b2606=def50200589e3ac42c74b1672b4189c5a6385144448adeda38bcbd8d110e5af7307d34013ef21a4db582af7fd745f8d4835670ead287335bf6bfe93968da0c3a45e737cdc241416ddba90c3dbdf41c9c889a6bac322e5d7245b96278f9313848b01a68d011e49b27b1a1ca5c07dc0e1ba6c981da13927668e1ff9a8081e3af5a2cf0e7f96b5440cc648daa9b47f1ea46a95d13b05b609a4125c8d5e58a61db7c7341a92d6fa8d403f7aae0aa25be0017d10c7f65a1aa2b1ed2dbda8c3a827f598687db8421e0a58a88477cafa43a4864be001a3aa0409114b9; PrestaShop-ae8a7ff43967029cf4927daaba6e1d78=def50200c736a3d82dee9f316627c2699c03f76d87a99f1d82ee0c141eb729c44f4f3e4ab38b1fe7d026bd4b1288193ef943384b8bc445d1b3f85c573f8115fb37ee8b3df221206f365a72f6efc5d1ed8fe50453e24b4fbcbedfcd927fa350c1757e05211ddd8166039dcdc884228e23a2572908e12db7fa0f11b5bc9872835ba2433e1c111cd5b32f88e4b5fff694d6ceaa26f3afea9a9f20f82eac292950ef9150e94af024b1df9155dcf6ac3822cf1363d4f08b6f667dc29942c83886e7bb152a965352d048d47b21fa8928c130990c218fb6339f7240f162c91451a9e3b01d8ac37178125d585e686591fe208bd8b5e1b18456bdcfeb362733; PHPSESSID=fat9d87ni3fgdeuv73v9sp4mf0; PrestaShop-84edda16aabd1471ffc8d3460ae3d10f=def50200dd02dc27e07db7747be3b1944efef21cd40c69ad73155665d5a76a35ed07077884d8207e632bdd383bf34c4d93ca8ea990e6555a4276a6699d6b17ff66c524b5f69abcff88e7ddc6a31899afd9254034fae97defbb72175405f35c6513ae30a4a0e38c3f80fc3d1f1c034c079ac65c24f1e24c50b5c49b62740741358dccf5f562daaed68ec4e41bdb230fcd05e5e0d75edb4e69bccc2db7463ccfec31ef5c253f25bd820584664857ddceefb2cada9e92709abd976fa77819213b92b92eb1aadbfa0063f835d8259396d4ce504b86f58e7e66c87b7c226ab462e11f4bcbb616bbeaa8375640; _gcl_au=1.1.1663904799.1711041285; _scid=2f12fc9b-2fb5-4fae-bca2-accd80aada1d; _fbp=fb.1.1711041285220.82551541; _gid=GA1.2.275698148.1711041286; _gat_gtag_UA_214299592_1=1; _sctr=1%7C1711040400000; axeptio_authorized_vendors_en=%2Csnapchat%2Cfacebook_conversion_tracking%2Cfacebook_pixel%2Ctwitter%2Cgmaps%2Cgoogle_ads%2Cgoogle_analytics%2Cgoogle_conversion_tracking%2Cide%2Cgoogletagmanager%2Chotjar%2CSnapchat%2CFacebook%20Conversion%20Tracking%2CTwitter%2CGoogle_Ads%2CGoogle_Conversion_Tracking%2CIDE%2C; axeptio_all_vendors_en=%2Csnapchat%2Cfacebook_conversion_tracking%2Cfacebook_pixel%2Ctwitter%2Cgmaps%2Cgoogle_ads%2Cgoogle_analytics%2Cgoogle_conversion_tracking%2Cide%2Cgoogletagmanager%2Chotjar%2CSnapchat%2CFacebook%20Conversion%20Tracking%2CTwitter%2CGoogle_Ads%2CGoogle_Conversion_Tracking%2CIDE%2C; axeptio_cookies_en={%22$$token%22:%22sllp877j6fhwv8nd0swimo%22%2C%22$$date%22:%222024-03-21T17:15:10.004Z%22%2C%22$$cookiesVersion%22:{%22name%22:%22naivas-en%22%2C%22identifier%22:%22645cb096c665b447c8563f27%22}%2C%22snapchat%22:true%2C%22facebook_conversion_tracking%22:true%2C%22facebook_pixel%22:true%2C%22twitter%22:true%2C%22gmaps%22:true%2C%22google_ads%22:true%2C%22google_analytics%22:true%2C%22google_conversion_tracking%22:true%2C%22ide%22:true%2C%22googletagmanager%22:true%2C%22hotjar%22:true%2C%22Snapchat%22:true%2C%22Facebook%20Conversion%20Tracking%22:true%2C%22Twitter%22:true%2C%22Google_Ads%22:true%2C%22Google_Conversion_Tracking%22:true%2C%22IDE%22:true%2C%22$$completed%22:true}; _scid_r=2f12fc9b-2fb5-4fae-bca2-accd80aada1d; _ga_0WNVT32WKE=GS1.1.1711041284.1.1.1711041312.32.0.0; _ga=GA1.2.2016091045.1711041285'
    },   
}