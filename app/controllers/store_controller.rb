class StoreController < ApplicationController
  # skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  def index
    @categories = Category.all
    if params[:set_locale]
      redirect_to store_url(locale: params[:set_locale])
    else
      @products = Product.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
    end
  end
end