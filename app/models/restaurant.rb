class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }

  before_destroy :destroy_related_reviews

  private

  def destroy_related_reviews
    reviews.destroy_all
  end
end
