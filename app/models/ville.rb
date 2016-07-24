class Ville < ActiveRecord::Base
  belongs_to :departement
  has_many :campings
end
