class StaticController < ApplicationController
  skip_before_action :authenticate_user!, :only => [ :homepage ]
  def homepage
    @pending_approvals = Post.where(status: 'submitted')
  end
end