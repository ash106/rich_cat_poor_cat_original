class Cat < ActiveRecord::Base
  enum finances: [ :rich, :poor ]

  has_attached_file :image, :styles => { :medium => "400x400>", :thumb => "100x100>" }, :default_url => "/images/missing_:style.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
