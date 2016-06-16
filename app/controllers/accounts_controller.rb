
class AccountsController < ApplicationController

  #http_basic_authenticate_with({name: "me", password: "pass"})


#this is hash in ruby, multiple keys and values, :name are like string but cant be change so commonly used as keys. whenever there is a symbol for key there is a shorthand name: 'local'
#in irb {name: "something"} will come out as {:name=>"something"}
before_action :authenticate_user!
  def index
    # authenticate_user!
    # if(authenticate_user!)
      accounts = current_user.accounts
      respond_to |format| do
        format.html{}
        format.json{render ({json: accounts})}
      # render json: accounts
    end

    #tells us who the user that is logged in so not everyone get access to everything accounts = current_user.accounts
    # raise
    # accounts = [ 
    #   { :user_id => 1, :category => 'local', :ammount => 10.0 }, 
    #   { :user_id => 1, :category => 'offshore', :amount => 1000000.00 }
    # ]

    # render json: accounts
  end 

end