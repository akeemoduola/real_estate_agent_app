class Agent < ApplicationRecord
  has_many :sales, dependent: :destroy
  has_one :newest_sale, dependent: :destroy
end
