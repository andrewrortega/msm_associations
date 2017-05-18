class Character < ApplicationRecord

validates :movie_id, :presence => true

validates :actor_id, :presence => true

end
