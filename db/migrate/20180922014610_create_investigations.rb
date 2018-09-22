class CreateInvestigations < ActiveRecord::Migration[5.2]
  def change
    create_table :investigations do |t|
      t.string :title
      t.text :description
      t.string :crime_location
      t.date :date_opened
      t.date :date_closed
      t.boolean :solved
      t.boolean :batman_involved
      t.references :crime, foreign_key: true

      t.timestamps
    end
  end
end
