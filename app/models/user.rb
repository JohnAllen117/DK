class User < ActiveRecord::Base
  enum role: %w(user it_chair assistant_it_chair)
  enum pc_position: %w(consul proconsul annotator scribe sergeant_at_arms custodian)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: :true
  validates :last_name, presence: :true
  validates :role, presence: :true
  validates :beta_number, presence: :true
end
