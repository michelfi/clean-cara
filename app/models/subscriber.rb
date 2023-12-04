class Subscriber < ApplicationRecord
  has_many :subscriptions
  has_and_belongs_to_many :categories

  validates :surname, presence: true
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
