class Post < ApplicationRecord
  # Associations
  belongs_to :user
  has_one_attached :image
  has_one_attached :video

  # Validations
  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: ['Comprendre l\'actualité', 'Créer le futur', 'Arts et culture', 'Méditation et spiritualité', 'Événements et Inscriptions'] }
  validates :content, presence: true
end
