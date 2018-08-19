class StaticController < ApplicationController
  skip_before_action :authenticate_user!, :only => [ :homepage ]
  def homepage
    @pending_approvals = Post.where(status: 'submitted')
    @recent_audit_items = AuditLog.last(10)
  end
end