class Artist < ApplicationRecord
  has_many :song

  validates :name, uniqueness: { case_sensitive: false }
end
