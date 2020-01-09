# # in lib/onebox/engine/name_onebox.rb

module Onebox
    module Engine
      class WeiboOnebox
        include Engine
        include LayoutSupport
        include HTML
  

        matches_regexp(/^(https?:\/\/)?(www\.)?(m\.)?weibo\.(com|cn)\/(.)+\/?$/)

        #/^https?:\/\/(mobile\.|www\.)?twitter\.com\/.+?\/status(es)?\/\d+(\/(video|photo)\/\d?+)?+(\/?\?.*)?\/?$/)
        #/^https?:\/\/.*\.wikipedia\.(com|org)/

        private
    
  
        def data
          {
            url: @url,
            title: raw.css("title").inner_text
          }
        end
      end
    end
  end
