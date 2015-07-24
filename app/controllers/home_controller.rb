class HomeController < ApplicationController
  def show
    redirect_to items_path if current_user
  end
end