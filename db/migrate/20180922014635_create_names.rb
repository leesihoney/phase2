class CreateNames < ActiveRecord::Migration[5.2]
  def change
    create_table :names do |t|
      t.boolean :felony
      t.boolean :active

      t.timestamps
    end
  end
end
