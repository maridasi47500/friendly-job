class SampleNameChangeColumnType < ActiveRecord::Migration[8.0]
  def change
    change_column(:joboffers, :dispo, :string)
  end
end
