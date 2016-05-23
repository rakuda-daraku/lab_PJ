class User < ActiveRecord::Base

  # フォロー・フォロワーの紐付
  has_many :follows_f, class_name: 'Relation', foreign_key: :from_id
  has_many :followings, through: :follows_f, source: 'target'

  has_many :followers_f, class_name: 'Relation', foreign_key: :target_id
  has_many :followers, through: :followers_f, source: 'from'

  # タグ紐付
  has_many :to_tags_f, class_name: 'RelationTag', foreign_key: :relation_code
  has_many :tagging, through: :to_tags_f, source: 'to_tag'


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # ログインパラメータのアクセサ
  attr_accessor :login

  # validates :username,
  #           uniqueness: { case_sensitive: :false },
  #           length: { minimum: 4, maximum: 20 }

  # フォロー等の機能

  # フォロー
  def follow user
    followings << user
  end

  # フォロー解除
  def unfollow user
    followings.destroy user
  end

  # フォローしてるユーザかの判定
  def followed? user
    followings.include? user
  end

  # フォローされているか？
  def follower? user
    user.followers.include? user
  end

end
