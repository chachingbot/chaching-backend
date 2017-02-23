class Query < ApplicationRecord
  belongs_to :classification
  belongs_to :user
end
