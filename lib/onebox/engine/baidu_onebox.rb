module Onebox
    module Engine
      class BaiduOnebox
        include Engine
        include LayoutSupport
        include HTML
  
        matches_regexp(/^(https?:\/\/)?baike\.baidu\.com\/(.)+\/?$/)
        always_https

        private
  
  
        def data
          title = CGI.unescapeHTML(raw.css("title").inner_text)

        result = {
          link: link,
          title: title,
          image: raw.css('img[name="image"]').first['src'],
        }

        result
        end
  
      end
    end
  end
  