require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @name = params[:name]
    "Hello #{@name}!"
  end

  get "/goodbye/:name" do
    @name = params[:name]
    "Goodbye, #{@name}."
  end
  # Code your final two routes here:
  get "/multiply/:num1/:num2" do 
    @product = params[:num1].to_i * params[:num2].to_i
  "#{@product}"
  end

end