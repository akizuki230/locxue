class Evento < ActiveRecord::Base
	mount_uploader :imagen, ImageUploader
end
