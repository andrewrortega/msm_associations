class Actor < ApplicationRecord

validates :name, :presence => true, :uniqueness => { :scope => :dob }

end
