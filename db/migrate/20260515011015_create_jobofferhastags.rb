class CreateJobofferhastags < ActiveRecord::Migration[8.0]
  def change
    create_table :jobofferhastags do |t|
      t.references :joboffer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
