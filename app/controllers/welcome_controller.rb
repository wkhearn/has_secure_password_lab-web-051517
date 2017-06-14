class WelcomeController < ApplicationController
  before_action :log_in_required
  def show
    @user = current_user
  end
end
