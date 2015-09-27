class Category < ActiveRecord::Base
	has_many :products

	has_attached_file :image, styles: {large: "600X600>", medium: "300x300>", thumb: "100x100>" }
	attr_accessor :image_file_name, :image_content_type, :image_file_size, :image_updated_at

	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

end
