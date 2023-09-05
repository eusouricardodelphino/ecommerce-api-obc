class License < ApplicationRecord
  include NameSearchable
  include Paginatable

  validates :key, presence: true, uniqueness: { case_sensitive: false }

  belongs_to :game
end
