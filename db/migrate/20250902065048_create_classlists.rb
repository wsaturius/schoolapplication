class CreateClasslists < ActiveRecord::Migration[7.1]
  def change
    create_table :classlists do |t|
      t.references :student, null: false, foreign_key: true
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
