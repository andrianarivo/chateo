class Channel < ApplicationRecord
  validates_uniqueness_of :name
  scope :public, -> { where(is_private: false) }
end
