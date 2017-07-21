require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :z_index
  end
  
  # post '/' do
    # erb :results
  #   puts params
  # end
   post '/' do
    @month = params[:month]
    # @day = params[:day]
    
    if (@month == "1")
      erb :A_January_a
      elsif (@month == "2")
      erb :B_February
      elsif (@month == "3")
      erb :C_March
      elsif (@month == "4")
      erb :D_April
      elsif (@month == "5")
      erb :E_May
      elsif (@month == "6")
      erb :F_June
      elsif (@month == "7")
      erb :G_July
      elsif (@month == "8")
      erb :H_August
      elsif (@month == "9")
      erb :I_September
      elsif (@month == "10")
      erb :J_October
      elsif (@month == "11")
      erb :K_November
      else 
      erb :L_December
    end
  end
end