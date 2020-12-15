class LineItem < ApplicationRecord
  belongs_to :topics
  belongs_to :courses
end
