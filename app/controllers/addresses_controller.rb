class AddressesController < ApplicationController
  def edit
    @address = Address.where(user_id: current_user.id).first
  end

  def update
   address = Address.find(params[:id])
   if address.update(address_params)
  
   else
    @address = Address.where(user_id: current_user.id).first
    render :edit and return
   end

  end

  private
  def address_params
    params.require(:address).permit(:destination_last_name, :destination_first_name, :destination_last_name_kana, :destination_first_name_kana, :postal_code, :prefecture_id, :city, :block, :building, :phone_numeber)
  end
end
