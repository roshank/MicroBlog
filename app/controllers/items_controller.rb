class ItemsController < ApplicationController

  def new
    @title = params[:title]
    @img = params[:img]
    @price = params[:price]
  end
  
end
