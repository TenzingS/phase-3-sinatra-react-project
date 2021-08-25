class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/stocks" do
    stocks = Stock.all.order(:name)
    stocks.to_json
  end

  get "/user" do
    user = User.first
    user.to_json
  end

  post "/stocks" do
    stocks = Stock.create(name: params[:name], price: params[:price], user_id: 0, logo_url: params[:logo_url])
    stocks.to_json
  end

  patch "/stocks/:id" do
    stock = Stock.find(params[:id])
    stock.update(user_id: params[:user_id])
    stock.to_json
  end

  patch "/user/:id" do
    user = User.find(params[:id])
    user.to_json
  end
  
end
