class CreateReleases < ActiveRecord::Migration[5.2]
  def change
    create_table :releases do |t|
      t.references :account, foreign_key: true
      t.string :release_type
      t.decimal :value

      t.timestamps
    end
  end
end
