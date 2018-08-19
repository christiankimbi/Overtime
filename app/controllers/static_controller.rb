class StaticController < ApplicationController
  skip_before_action :authenticate_user!, :only => [ :homepage ]
  def homepage
    if admin_types.include?(current_user.try(:type))
      @pending_approvals = Post.submitted
      @recent_audit_items = AuditLog.last(10)
    else

    end
  end
end