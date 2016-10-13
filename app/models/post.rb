# == Schema Information
#
# Table name: posts
#
#  id               :integer          not null, primary key
#  title            :string
#  text             :text
#  meta_description :text
#  meta_tags        :string
#  kind             :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Post < ActiveRecord::Base
  enum kind: [:article, :announcement]
  has_attached_file :image,
    styles: { large: "600x600>", medium: "400x400>", thumb: "100x100>" },
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/jpg', 'image/png']
  attr_accessor :image_file_name, :image_content_type, :image_file_size, :image_updated_at
end
