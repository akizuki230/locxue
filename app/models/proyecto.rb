class Proyecto < ActiveRecord::Base
	mount_uploader :imagen, ImageUploader
end
