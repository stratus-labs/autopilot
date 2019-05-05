class User < ApplicationRecord
  acts_as_paranoid
  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :validatable, :invitable

  belongs_to :account, optional: true

  validates_uniqueness_of :email

  after_create :create_account, unless: :invited_to_sign_up?

  def is_pending
    owner = Account.find(self.account_id).users.first
    true unless self.invitation_accepted_at || self == owner
  end

private

  def create_account
    if self.account_id.nil?
      account = Account.create(owner_id: self.id)
      self.update(account: account)
    end
  end
end
