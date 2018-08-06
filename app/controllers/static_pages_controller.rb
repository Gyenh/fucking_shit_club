class StaticPagesController < ApplicationController
  def home
  end

  def secret
    @users = User.all
  end
end
