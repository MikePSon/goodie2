class Users::RegistrationsController < Devise::RegistrationsController
  # DELETE /resource  
  def destroy
    
    # Delete stripe acct
    if current_user.program_admin?
      stripe_customer = Stripe::Customer.retrieve(current_user.stripeid)
      stripe_customer.delete
    end

    resource.soft_delete
    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)  
    set_flash_message :notice, :destroyed if is_flashing_format?
    yield resource if block_given?
      respond_with_navigational(resource){ redirect_to after_sign_out_path_for(resource_name) }
  end

  def after_sign_up_path_for(resource)
  	'/subscribers/new'
  end

end  