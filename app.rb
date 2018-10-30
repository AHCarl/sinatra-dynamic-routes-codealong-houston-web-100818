require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do 
    @user = params[:name]
    "Goodbye, #{user}."
  end
  
  post '/multiply/:nums' do 
    @num1 = params[:nums][0]
    @num2 = params[:nums][1]
    (@num1 * @num2).to_s
  end

end