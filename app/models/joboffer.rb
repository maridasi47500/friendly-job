class Joboffer < ApplicationRecord
belongs_to :contract
belongs_to :city
belongs_to :secteur
has_many :jobofferhastags
def myprofil
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    markdown.render(read_attribute(:profil).to_s)
end
def mycompetence
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    markdown.render(read_attribute(:competence).to_s)
end
def mymission
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    markdown.render(read_attribute(:mission).to_s)
end

def mycity=(hey)
self.city_id=City.find_or_create_by(name: hey).id
end
def mycity
self.city_id ? City.find(self.city_id).try(:name) : ""
end
end
