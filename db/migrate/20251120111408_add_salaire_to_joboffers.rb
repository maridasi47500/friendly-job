class AddSalaireToJoboffers < ActiveRecord::Migration[8.0]
  def change
    add_column :joboffers, :salaire, :float
  end
end
