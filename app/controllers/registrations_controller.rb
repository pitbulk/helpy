class RegistrationsController < Devise::RegistrationsController
  theme :theme_chosen

  # Overwrite update_resource to let users to update their user without giving their password
  def update_resource(resource, params)
    unless current_user.provider.nil?
      params.delete("current_password")
      resource.update_without_password(params)
    else
      resource.update_with_password(params)
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(
      :name,
      :email,
      :course_and_batch,
      :student_number,
      :password,
      :password_confirmation,
      :profile_image
    )
  end

  def account_update_params
      params.require(:user).permit(
        :name,
        :email,
        :bio,
        :avatar,
        :title,
        :home_phone,
        :cell_phone,
        :work_phone,
        :street,
        :city,
        :state,
        :zip,
        :password,
        :time_zone,
        :password_confirmation,
        :current_password,
        :profile_image,
        :student_number,
        :course_and_batch,
        :account_number
      )
  end

end
