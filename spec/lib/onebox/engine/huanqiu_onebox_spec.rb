# frozen_string_literal: true

require "spec_helper"

describe Onebox::Engine::huanqiuOnebox do
  before(:all) do
    @link = "https://oversea.huanqiu.com/article/9CaKrnKoECI/"
  end
  include_context "engines"
  it_behaves_like "an engine"

  before do
    fake(link, response("huanqiu.response"))
  end

  it "has huanqiu title" do
    expect(html).to include("美媒：逐百万美元奖　见识下中国电竞选手)")
  end

  it "has huanqiu image" do
    expect(html).to include("https://rs1.solution9.net/api/source/huanqiu-releaseStatics/www.huanqiu.com/list/huanqiu-logo2x.png")
  end

  it "has the huanqiu description" do
    expect(html).to include("<p>他们并非无所事事的玩家，而是为挣大钱苦练的新型职业选手。")
  end

  it "has the URL to the resource" do
    expect(html).to include(link)
  end
end
