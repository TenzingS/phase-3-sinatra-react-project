class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/stocks" do
    stocks = Stock.all
    stocks.to_json
  end

  get "/user" do
    user = User.all
    user.to_json
  end

  post "/stocks" do
    stocks = Stock.create(name: params[:name], price: params[:price], user_id: 0)
  end
  
end
