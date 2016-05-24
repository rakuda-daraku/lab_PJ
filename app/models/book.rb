class Book < ActiveRecord::Base
  attr_writer :val, :vec
  def val

  end
  def vec

  end

  @@tate = 64
  @@yoko = 64

  def tate(num)
    @@tate = num
  end

  def yoko(num)
    @@yoko = num
  end

  def self.tate
    @@tate
  end

  def self.yoko
    @@yoko
  end

  mount_uploader :image, ImageUploader
end
