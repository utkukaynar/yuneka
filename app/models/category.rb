class Category < ActiveRecord::Base
  belongs_to :vendor
  has_many :products
  validates :name, presence: true
  validates :vendor_id, presence: true
  validates :image, presence: true
  has_ancestry :cache_depth => true
  
  def parent_enum
    Category.where.not(id: id).map { |c| [c.name, c.id] }
  end
  
  # attr_accessor :image_file_name, :image_content_type, :image_file_size, :image_updated_at
  has_attached_file :image, 
    styles: { large: "600x600>", medium: "400x400>", thumb: "100x100>" }, 
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type(:image, content_type: ['image/jpeg', 'image/jpg', 'image/png'])
end
