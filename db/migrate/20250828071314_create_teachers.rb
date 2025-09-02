class CreateTeachers < ActiveRecord::Migration[7.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :specialization
      t.string :statatus
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
