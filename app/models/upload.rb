class Upload < ApplicationRecord
	belongs_to :imageable, polymorphic: true,optional: true
		has_attached_file :image, :styles => { :medium => "300x300>",:thumb => "100x100>" }
	
	validates_attachment 	:image, 
				:presence => true,
				:content_type => { :content_type => /\Aimage\/.*\Z/ },
				:size => { :less_than => 1.megabyte }
	  mount_uploader :upload, UploadUploader
end