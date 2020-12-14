class Topic < ApplicationRecord
    validates :topics_title, :content, :description, :image_url, :demonstrator, :queries_email, presence: true
    validates :topics_title, uniqueness: true
    validates :duration, numericality: { greater_than_or_equal_to: 0.30 }
    validates :package_price, numericality: { greater_than_or_equal_to: 5.00 }
    validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|jpeg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
    }
end
