class AddressesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @addresses = Address.all

    @markers = @addresses.geocoded.map do |address|
      {
        lat: address.latitude,
        lng: address.longitude
      }
    end
  end
end
