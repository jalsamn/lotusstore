class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :authenticate_spree_user!, :except => [:index]
 # before_filter :fetch_orders
  after_filter :set_access_control_headers

#  def fetch_orders
#    @order = current_order || Spree::Order.incomplete.find_or_initialize_by(guest_token: cookies.signed[:guest_token])
#      associate_user
#  end

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = '*'
  end
  protect_from_forgery with: :exception
end
