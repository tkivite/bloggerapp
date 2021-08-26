class PagesController < ApplicationController
  before_action :redirect_if_not_signed_in
  def index
    @posts = Post.limit(5)
  end
end
