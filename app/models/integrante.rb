class Integrante < ActiveRecord::Base
	mount_uploader :imagen, ImageUploader
end
