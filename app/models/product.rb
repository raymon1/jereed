class Product < ActiveRecord::Base
	require 'paperclip'
	belongs_to :category

	has_attached_file :image, styles: {large: "800x600>", medium: "400x400>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
