class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :city_code
      t.string :city_name

      t.timestamps
    end
  end
end
