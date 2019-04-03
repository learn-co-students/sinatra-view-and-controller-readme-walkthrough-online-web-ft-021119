require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do #renders the reverse.erb page
    erb :reverse
  end

  post '/reverse' do #receives that params hash from the form (but does nothing with it) and renders the reversed.erb page
    # puts params
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do #renders friends.erb page
     @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
     erb :friends
  end
end
