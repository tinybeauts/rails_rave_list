class Post < ActiveRecord::Base
  attr_accessible :name, :description, :email, :category_id
  belongs_to :category
end
