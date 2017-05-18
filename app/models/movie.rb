class Movie < ApplicationRecord
  # Movie:
  validates :director_id, :presence => true
  #  - director_id: must be present

  validates :title, :presence => true, :uniqueness => { :scope => :year }
  #  - title: must be present; must be unique in combination with year

  validates :year, numericality: { only_integer: true, :greater_than_or_equal_to => 1870, :less_than_or_equal_to => 2050 }
  #  - year: must be integer between 1870 and 2050

    validates :duration, numericality: { only_integer: true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 2764800 }
  #  - duration: must be integer between 0 and 2764800, but it can be blank (hint: there is an option `:allow_blank => true`)


  #  - description: no rules
  #  - image_url: no rules
end
