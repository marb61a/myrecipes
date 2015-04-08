class Like < ActiveRecord::Base
  belongs_to :chef
  belongs_to :recipe
  
<<<<<<< HEAD
  
  
=======
>>>>>>> like-dislike
  validates_uniqueness_of :chef, scope: :recipe
end