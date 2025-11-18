class CreateJobhasskills < ActiveRecord::Migration[8.0]
  def change
    create_table :jobhasskills do |t|
      t.integer :job_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
