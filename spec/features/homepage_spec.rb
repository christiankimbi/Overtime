require 'rails_helper'

describe 'homepage' do
  it 'allows the  admin to approve the post from the homepgae' do
    post = FactoryBot.create(:post)
    admin_user = FactoryBot.create(:admin_user)
    login_as(admin_user, :scope => :user)

    visit root_path
    click_on("approve_#{post.id}")

    expect(post.reload.status).to eq('approved')
  end

  it 'allows the employee to change the audit log status from the homepage' do

    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    audit_log = FactoryBot.create(:audit_log)

    audit_log.update(user_id: user.id)
    visit root_path

    #byebug
    click_on("confirm_#{audit_log.id}")
    expect(audit_log.reload.status).to eq("confirmed")
  end
end