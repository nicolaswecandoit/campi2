require "administrate/base_dashboard"

class CampingDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    nom: Field::String,
    image: PaperclipField,
    adresse: Field::String,
    code_postale: Field::String,
    commune: Field::String,
    courriel: Field::String,
    site_internet: Field::String,
    emplacements: Field::Number,
    tel: Field::String,
    description: Field::Text,
    nomdep: Field::String,
    region: Field::String,
    numdep: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    slug: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :nom,
    :adresse,
    :code_postale,
    :image,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :nom,
    :adresse,
    :code_postale,
    :commune,
    :courriel,
    :site_internet,
    :emplacements,
    :tel,
    :description,
    :nomdep,
    :region,
    :numdep,
    :created_at,
    :updated_at,
    :slug,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :nom,
    :image,
    :adresse,
    :code_postale,
    :commune,
    :courriel,
    :site_internet,
    :emplacements,
    :tel,
    :description,
    :nomdep,
    :region,
    :numdep,
    :slug,
  ].freeze

  # Overwrite this method to customize how campings are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(camping)
  #   "Camping ##{camping.id}"
  # end
end
