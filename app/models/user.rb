class User < ActiveRecord::Base
  enum role: %w(user admin)
  enum pc_position: %w(consul proconsul annotator scribe sergeant_at_arms custodian)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: :true
  validates :last_name, presence: :true
end
