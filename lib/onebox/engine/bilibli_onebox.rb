# name: Bilibili support for Discourse Onebox
# about: Wrap official Bilibili HTML5 player for insertion in Onebox
# version: 0.1.0
# authors: misaka4e21<xyh1996@gmail.com>

class Onebox::Engine::BilibiliOnebox
  include Onebox::Engine

  REGEX = /^https?:\/\/(www\.)?(bilibili.com)\/(video\/)?av(?<id>\d+)/
  matches_regexp REGEX



  def to_html
    "
    <iframe src='#{@url}'
    width='#{WIDTH}'
    height='#{HEIGHT}'
    scrolling='no'
    frameborder='0'
    webkitallowfullscreen
    mozallowfullscreen
    allowfullscreen >
    </iframe>
    "
  end
end
