class AddressesController < ApplicationController
  def edit
    @address = Address.where(user_id: current_user.id).first
    if params[:item_id]
      @item = Item.find(params[:item_id])
    else
    end
  end

  def update
    address = Address.find(params[:id])
    if address.update(address_params)
      if item_links_params[:item_id]
        redirect_to "/items/#{item_links_params[:item_id]}/confirm"
      else
      end
    else
     @address = Address.where(user_id: current_user.id).first
     render :edit and return
   end

  end

  private
  def address_params
    params.require(:address).permit(:destination_last_name, :destination_first_name, :destination_last_name_kana, :destination_first_name_kana, :postal_code, :prefecture_id, :city, :block, :building, :phone_numeber)
  end
  def item_links_params
    params.require(:address).permit(:item_id)
  end
end
