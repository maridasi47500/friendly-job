class AddProfilToJoboffers < ActiveRecord::Migration[8.0]
  def change
    add_column :joboffers, :profil, :string
    add_column :joboffers, :mission, :string
    add_column :joboffers, :competence, :string
  end
end
