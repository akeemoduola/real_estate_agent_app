class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {
    master: 'master',
    secondary: 'secondary'
  }

  validates :username, presence: :true, uniqueness: { case_sensitive: false }
  validates :first_name, presence: :true
  validates :last_name, presence: :true
  validates :role, presence: :true
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
end
