class User < ApplicationRecord
  has_one_attached :avatar

  has_many_attached :photos do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100], preprocessed: true
    attachable.variant :micro, resize_to_limit: [20, 20], preprocessed: true
  end
end
