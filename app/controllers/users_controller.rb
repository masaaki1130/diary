class UsersController < ApplicationController


  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @name = current_user.name
    @messages =current_user.messages
    @image = current_user.image
  end
  private

  def user_params
    params.require(:user).permit(:name, :email, :image, :comment)
  end
end
