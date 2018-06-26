class SushiController < ApplicationController
  get "/sushis" do 
    @sushis = Sushi.all
    erb :"sushi/index"
  end

  post "/sushis" do
    @sushi = Sushi.create(name: params["name"],
                          description: params["description"],
                          price: params["price"])

    redirect "sushis/#{@sushi.id}"
  end

  get "/sushis/new" do 
    @sushi = Sushi.new
    erb :"sushi/new"
  end

  get "/sushis/:id" do 
    @sushi = Sushi.find(params["id"])
    erb :"sushi/show"
  end


  get "/sushis/:id/edit" do 
    @sushi = Sushi.find(params["id"])
    erb :"sushi/edit"
  end

  patch "/sushis/:id" do
    @sushi = Sushi.find(params["id"])

    @sushi.update(name: params["name"],
                  description: params["description"],
                  price: params["price"])

    redirect "sushis/#{@sushi.id}"
  end

  delete "/sushis/:id" do
    @sushi = Sushi.find(params["id"])
    @sushi.destroy

    redirect "/sushis"
  end

end