class Filiere < ApplicationRecord

    #association model    
    has_many :etabs_filieres    
    has_many :etabs, through: :etabs_filieres
    has_many :niveaus, through: :etabs_filieres

    has_many :inscriptions
    
end
