module Onebox
    module Engine
      class HuanqiuOnebox
        include Engine
        include LayoutSupport
        include HTML
  
        matches_regexp(/^(http?:\/\/)?(.+)?huanqiu\.com\/?.*\/?$/)

        def get_logo_url
          'https://rs1.solution9.net/api/source/huanqiu-releaseStatics/www.huanqiu.com/index/new_logo.png'
        end
        
        private
  
        def data
          {
            url: @url,
            image: get_logo_url,
            title: raw.css('title').text.gsub('\n', '').strip(),
            description: raw.css('.l-container article p')[0].text
          }
        end
      end
    end
  end
