class StaticController < ApplicationController
  skip_before_action :authenticate_user!, :only => [ :homepage ]
  def homepage
    if admin_types.include?(current_user.try(:type))
      @pending_approvals = Post.submitted
      @recent_audit_items = AuditLog.last(10)
    else
      @pending_audit_confirmations = current_user.audit_logs.pending.by_start_date if current_user
    end
  end
end