class CreateWeathers < ActiveRecord::Migration[5.1]
  def change
    create_table :weathers do |t|
      t.references :city, foreign_key: true
      t.datetime :record_time
      t.decimal :temperature
      t.decimal :humidity

      t.timestamps
    end
  end
end
