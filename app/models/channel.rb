class Channel < ApplicationRecord
  validates_uniqueness_of :name
  scope :published, -> { where(is_private: false) }
  after_create_commit { broadcast_append_to 'channels' }
end
