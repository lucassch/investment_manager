class Investment < ActiveRecord::Base
  extend EnumerateIt

  has_enumeration_for :investment_type, with: InvestmentTypes

  belongs_to :user

  validates :user, :description, :investment_type, presence: true
  validates :description, uniqueness: { scope: :user_id }

  def to_s
    description
  end
end
