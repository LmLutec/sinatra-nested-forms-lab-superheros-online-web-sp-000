#require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do 
    erb :super_hero 
  end 

  post '/teams' do 
  
    @team = params[:team]
    # @team_name = params[:team][:name]
    # @team_motto = params[:team][:motto]
    @hero = params["team"]["heroes"].each do |member|
      Hero.new(member)
      end 
# binding.pry
    erb :team
  end 

end
