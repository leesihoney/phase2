class CreateOfficers < ActiveRecord::Migration[5.2]
  def change
    create_table :officers do |t|
      t.string :first_name
      t.string :last_name
      t.references :unit, foreign_key: true
      t.string :rank
      t.string :ssn
      t.boolean :active

      t.timestamps
    end
  end
end
