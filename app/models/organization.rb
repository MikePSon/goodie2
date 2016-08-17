class Organization
  include Mongoid::Document
  # Associations
  has_many :users
  has_many :request
  has_many :project
  has_many :cycle

  # Data
  field :name, type: String

end