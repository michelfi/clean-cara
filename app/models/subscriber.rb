class Subscriber < ApplicationRecord
  has_many :subscriptions

  validates :surname, presence: true
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: ['Comprendre l\'actualité', 'Créer le futur', 'Arts et culture', 'Méditation et spiritualité', 'Événements et Inscriptions'] }
end
