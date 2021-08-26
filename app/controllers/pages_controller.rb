class PagesController < ApplicationController
  before_action :redirect_if_not_signed_in
  def index
    @posts = Post.order(created_at: :desc).limit(50)
  end
end
