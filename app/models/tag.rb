class Tag < ActiveRecord::Base
  # タグ紐付
  has_many :to_user_f, class_name: 'RelationTag', foreign_key: :tag_code
  has_many :to_user, through: :to_user_f, source: 'to_user'
end
