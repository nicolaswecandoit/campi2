class Camping < ActiveRecord::Base
  belongs_to :ville
  belongs_to :departement
  belongs_to :region

  has_attached_file :image, styles: { medium: "300x300>", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


  geocoded_by :addresse
  after_validation :geocode

  def self.search(search)
    where("nom LIKE ? OR adresse LIKE ? OR commune LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
