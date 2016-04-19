class ShoppingCartItemsController < ApplicationController
  def create
    session[:shopping_cart] ||= {}
    product_id = shopping_cart_item_params[:hour_glass_id]
    quantity = shopping_cart_item_params[:quantity].to_i
    session[:shopping_cart][product_id] ||= 0
    session[:shopping_cart][product_id] += quantity
    redirect_to hour_glasses_path
  end

  def destroy
    # Subtract quantity from shopping cart
  end

  protected

  def shopping_cart_item_params
    params.permit(:hour_glass_id, :quantity)
  end
end
