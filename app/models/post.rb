class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def categories_attributes=(category_attributes)
  category_attributes.values.each do |category_attribute|
    category = Category.find_or_create_by(category_attribute)
    self.post_categories.build(category: category)
  end
end

def unique_users
  @array = []
if !self.comments.empty?
self.comments.each do |comment|
@array << comment.user
end
array.each do |user|
  user.username
binding.pry
end
end
end



end
