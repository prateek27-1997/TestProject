class RegistrationsController < Devise::RegistrationsController
 private
  def sign_up_params
    params.require(:author).permit(:email, :first_name, :last_name, :date_of_birth, :password, :password_confirmation)
  end 

  def account_update_params
    params.require(:author).permit(:email, :first_name, :last_name, :date_of_birth, :password, :password_confirmation)
  end
end