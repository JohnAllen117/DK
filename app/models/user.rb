class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: %w(user admin)
  enum pc_position: %w(consul proconsul annotator scribe sergeant_at_arms custodian)

  has_many :blog_posts

  def is_admin?
    self.admin?
  end
end
