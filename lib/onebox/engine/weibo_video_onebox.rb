# frozen_string_literal: true

# name: discourse-onebox-weibo-video
# about: For generating pretty oneboxes for video.weibo.com
# https://video.h5.weibo.cn/1034:4459699299352603/4459699502527906
# version: 0.2
# authors: dengzi

# Onebox = Onebox

# register_asset "../../../web/assets/javascripts/weibo.js"

module Onebox
  module Engine
     class WeiboVideoOnebox
        include Engine

        always_https
        matches_regexp(/^(https?:\/\/)?video\.(h5\.)?weibo\.(com|cn)\/(.)+\/?$/)

        WIDTH  = 640
        HEIGHT = 420

        def to_html

         "
         <iframe src='#{@url}'
           width='#{WIDTH}'
           height='#{HEIGHT}'
           id='weiboiframe'
           scrolling='no'
           frameborder='0'
           webkitallowfullscreen
           mozallowfullscreen
           allowfullscreen >
           </iframe>
           <br>
           <a href='#{@url}' target='_blank'>微博视频地址：#{@url}</a>
           " 
        end
     end
  end
end