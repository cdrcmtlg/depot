class StoreController < ApplicationController
  # skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.all
    @categories = Category.all
    
    
    if params[:search]
      @products = Product.where("title like ?", "%#{params[:search]}%").paginate(page: params[:page], per_page: 5)
    else
      @products = Product.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
    end
    
  end
end