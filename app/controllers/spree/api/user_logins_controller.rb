module Spree
  module Api
    class UserLoginsController < Spree::Api::BaseController
      def login
        user = User.find_by_email(params[:email].downcase)
        if user.nil?
          render :json => {:result => 'Authentication Failed'}
        else
          if user.valid_password?(params[:password])
            user.generate_spree_api_key!
            #user.save
            render :json => {:result => user.spree_api_key }
          else
            render :json => {:result => 'Authentication Failed'}
          end
        end
      end
      
      def forgotpassword
        user = User.find_by_email(params[:email].downcase)
          if user.nil?
            render :json => {:result => 'User Not Found'}
        else
          if user.send_reset_password_instructions
           
            render :json => {:result => "Password Sent" }
          else
            render :json => {:result => 'Error has happened'}
          end
        end
        
      end
      
    end
  end
end