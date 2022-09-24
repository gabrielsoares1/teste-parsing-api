class HomeController < ApplicationController
  def index
    require "json"
    require "open-uri"

    url = "https://api.spaceflightnewsapi.net/v3/articles"
    article_serialized = URI.open(url).read
    @article = JSON.parse(article_serialized)
    @article_title = @article[0]["title"]
    @article_url = @article[0]["url"]
    @article_image = @article[0]["imageUrl"]
    @article_summary = @article[0]["summary"]
    @article_date = @article[0]["publishedAt"]
    @article_news = @article[0]["newsSite"]
    
  end
end
