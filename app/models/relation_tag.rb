class RelationTag < ActiveRecord::Base
  belongs_to :to_tag, class_name: 'Tag', foreign_key: 'tag_code'
  belongs_to :to_user, class_name: 'User', foreign_key: 'relation_code'
end
