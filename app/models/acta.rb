class Acta < ActiveRecord::Base
	mount_uploader :imagen, ImageUploader
end
