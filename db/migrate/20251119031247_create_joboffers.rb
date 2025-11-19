class CreateJoboffers < ActiveRecord::Migration[8.0]
  def change
    create_table :joboffers do |t|
      t.integer :city_id
      t.integer :contract_id
      t.string :mydate
      t.string :mylength
      t.string :status
      t.string :experience
      t.integer :dispo

      t.timestamps
    end
  end
end
