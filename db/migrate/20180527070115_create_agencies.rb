class CreateAgencies < ActiveRecord::Migration[5.2]
  def change
    create_table :agencies do |t|
      t.string :agency_number
      t.string :address

      t.timestamps
    end
  end
end
