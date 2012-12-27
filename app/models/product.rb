class Product
	include Mongoid::Document
<<<<<<< HEAD
  include Mongoid::Timestamps
=======
>>>>>>> d5fc010fe55c4d6d0407d92f613f0420d127255e
	field :barcode, :type=>String
	field :name, :type=>String
	field :amount, :type=>String

	has_many :items
	embeds_one :amount_type

  scope :recently_created, order_by(:created_at => :desc).limit(100)

	validates :barcode,:name, :presence => true
end