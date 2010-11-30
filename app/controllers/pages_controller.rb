require 'amazon/ecs'
class PagesController < ApplicationController
  Amazon::Ecs.options = {:aWS_access_key_id => "AKIAJUFAFIGRO6EFG6EQ", 
                         :aWS_secret_key => "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"}
  def home
    @title = "Home"
    if signed_in?
      redirect_to @current_user
    end
  end

  def contact
    @title = "Contact"
  end
  
  def about
    queryText = params[:q]
    if (queryText == nil)
      @title = 'About'
    else
      @title = params[:q]
      res = Amazon::Ecs.item_search(@title, {:response_group => "Medium", :sort => "salesrank", :item_page => 1})
      @items = res.items
    end
  end
  
  def help
    @title = 'Help'
  end
  
end
