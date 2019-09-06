class Movie < ActiveRecord::Base 
    belongs_to :category
    
    validates :title, presence: {
        message: "Le titre doit être renseigné."
    }
    
    validates :title, uniqueness: {
        message: "Ce titre existe déjà."    
    }
    
    scope :action, -> { where(category_id: 1) }
end
