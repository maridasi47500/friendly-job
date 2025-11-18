class CreateUserhasskills < ActiveRecord::Migration[8.0]
  def change
    create_table :userhasskills do |t|
      t.integer :skill_id
      t.integer :user_id

      t.timestamps
    end
  end
end
