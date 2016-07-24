class Region < ActiveRecord::Base
  has_many :departements
  has_many :villes
  has_many :campings
end
