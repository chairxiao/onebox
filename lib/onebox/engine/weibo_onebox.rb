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

        # WIDTH  ||= 740
        # HEIGHT ||= 680

        # def to_html
        #  "<iframe src='#{@url}'
        #    width='#{WIDTH}'
        #    height='#{HEIGHT}'
        #    scrolling='no'
        #    frameborder='0'
        #    webkitallowfullscreen
        #    mozallowfullscreen
        #    allowfullscreen >
        #    </iframe>" 
        # end
        
        private
    
  
        def data
          {
            url: @url,
            title: raw.css("title").inner_text,
            description: raw.css(".weibo-og .weibo-text").text
          }
        end

       
      end
    end
  end
