# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  name               :string
#  description        :text
#  unit               :string
#  category_id        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Product < ActiveRecord::Base
  belongs_to :category
  has_attached_file :image, 
    styles: { large: "600x600>", medium: "400x400>", thumb: "100x100>" }, 
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/jpg', 'image/png']
end
