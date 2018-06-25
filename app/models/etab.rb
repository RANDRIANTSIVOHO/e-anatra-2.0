class Etab < ApplicationRecord
	mount_uploader :image, ImageUploader

	#un etab appartient à un user
	belongs_to :user
	#un etab a 0 ou plusieurs filieres
    has_many :etabs_filieres    
	has_many :filieres, through: :etabs_filieres
	
	has_many :articles
	has_many :vagues

	has_many :inscriptions    
	has_many :user, through: :inscriptions
end
