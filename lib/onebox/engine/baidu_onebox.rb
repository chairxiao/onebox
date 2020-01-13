# frozen_string_literal: true
# name: discourse-onebox-baidu-baike
# about: For generating pretty oneboxes for baike.baidu.com
# version: 0.1
# authors: dengzi

# Onebox = Onebox

module Onebox
    module Engine
      class BaiduOnebox
        include Engine
        include LayoutSupport
        include HTML
  
        matches_regexp(/^(https?:\/\/)?baike\.baidu\.com\/(.)+\/?$/)
        always_https

        private

        def to_html

          result ={
            url: @url,
            title: raw.css('title').text.sub('\n', '').strip(),
            description: raw.css('meta[name=description]').first['content']
          }
  
          <<-HTML
          <aside class="onebox baidu">
            <header class="source">
              <a href="#{@url}">百度百科</a>
            </header>
            <article class="onebox-body">
              <h3>
                <a href="#{@url}" target="_blank" rel="nofollow ugc noopener">
                  #{result[:title]}
                </a>
              </h3>
              <p>#{result[:description]}</p>
              </article>
             </aside> 
          HTML
        end
  
      end
    end
  end
  