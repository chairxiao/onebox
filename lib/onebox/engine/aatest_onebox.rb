# frozen_string_literal: true

module Onebox
    module Engine
      class AAtestOnebox
        include Engine
        include LayoutSupport
        include HTML
  
        matches_regexp(/^https?:\/\/(www\.)?reddit\.com/)
        #matches_regexp(/^https?:\/\/.*\.wikipedia\.(com|org)/)
        
        private
  
  
        def data
          {
            link: link,
            title: raw.css('title').text.gsub("\n", '').strip(),
            description: raw.css('meta[name=description]').first['content']
          }
        end
  
      end
    end
  end
  