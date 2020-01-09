module Onebox
    module Engine
      class HuanqiuOnebox
        include Engine
        include LayoutSupport
        include HTML
  
        # matches_regexp(/^(http?:\/\/)?(www\.)?zcool\.com\.cn\/?.*\/?$/)
        matches_regexp(/^(http?:\/\/)?(.+)?zcool\.com\.cn\/?.*\/?$/)
        
        def get_logo_url
          'https://static.zcool.cn/git_z/z/common/images/svg/logo.svg'
        end
        
        private
  
        def data
          {
            url: @url,
            image: get_logo_url,
            title: raw.css('title').text.gsub('\n', '').strip(),
            description: raw.css('meta[name=description]').first['content']
          }
        end
      end
    end
  end
