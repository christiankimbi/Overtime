require 'rails_helper'

describe 'AuditLog Feature' do
  let(:audit_log){ audit_log = FactoryBot.create(:audit_log)}

  describe 'index' do
    before do
      admin_user = FactoryBot.create(:admin_user)
      login_as(admin_user, :scope=> :user)
      FactoryBot.create(:audit_log)
    end

    it 'has an index page that can be reached' do
        visit audit_logs_path
        expect(page.status_code).to eq(200)
    end

    it 'renders audit log content' do

      visit audit_logs_path
      expect(page).to have_content(/KIMBI/)
    end

    xit 'cannot be accesssed by non admin users' do

    end
  end
end