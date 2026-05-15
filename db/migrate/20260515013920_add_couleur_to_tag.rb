class AddCouleurToTag < ActiveRecord::Migration[8.0]
  def change
    add_column :tags, :couleur, :string
  end
end
