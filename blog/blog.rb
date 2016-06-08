require 'sinatra'

get "/" do
  @welcome_text = "Hey! Welcome to my blog!"
  erb :home
end

get "/about_me" do
  @first_name = "Ellis"
  @last_name = "Burgoon Miskell"
  @favorite_food = "sushi"
  @hobbies = "cooking, traveling, papercrafts, origami, board & card games"
  erb :about_me
end

get "/about_my_hometown" do
  @town_name = "Yarmouth"
  @state = "Maine"
  @time_lived_there = "6 years"
  erb :about_my_hometown
end

get "/blog_post_06_07_2016" do
  @post_text = "This is my first blog post, made using Sinatra!"
  erb :blog_post_06_07_2016
end
