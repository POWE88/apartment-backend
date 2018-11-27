class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :street
      t.string :city
      t.string :zipcode
      t.string :state
      t.string :country
      t.string :managername
      t.string :managerphone
      t.string :managerhours

      t.timestamps
    end
  end
end
