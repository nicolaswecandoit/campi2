class Departement < ActiveRecord::Base
  belongs_to :region
  has_many :villes
  has_many :campings
end
