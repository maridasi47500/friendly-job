class Joboffer < ApplicationRecord
belongs_to :contract
belongs_to :city
belongs_to :secteur
def mycity=(hey)
self.city_id=City.find_or_create_by(name: hey).id
end
def mycity
self.city_id ? City.find(self.city_id).try(:name) : ""
end
end
