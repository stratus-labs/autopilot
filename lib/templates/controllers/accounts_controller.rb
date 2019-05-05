class AccountsController < ApplicationController
  before_action :authenticate_user!

  def users
    @users = current_account.users.all
  end

  def send_user_invite
    email = params[:user][:email]

    if User.only_deleted.where(email: email).any?
      user = User.only_deleted.where(email: email).first
      if user.deleted_at
        user.restore
        user.update(account: current_account)
        user.invite!(user)
      end
    else
      User.invite!(email: email, account: current_account)
    end

    respond_to do |format|
      format.html { redirect_to account_users_path, notice: 'Invite sent successfully' }
    end
  end
end
