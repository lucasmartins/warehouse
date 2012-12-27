class Item
	include Mongoid::Document
<<<<<<< HEAD
  include Mongoid::Timestamps
	belongs_to :product
	belongs_to :user

  scope :recently_created, order_by(:created_at => :desc).limit(100)

=======
	belongs_to :product
	belongs_to :user

>>>>>>> d5fc010fe55c4d6d0407d92f613f0420d127255e
  validates :product,:user, :presence => true
end