class Category < ActiveRecord::Base
  belongs_to :vendor
  validates :name, presence: true
  validates :vendor_id, presence: true
  has_ancestry
  
  def parent_enum
    Category.where.not(id: id).map { |c| [c.name, c.id] }
  end
  
end
