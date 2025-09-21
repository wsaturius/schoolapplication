class AddOtherAttributes < ActiveRecord::Migration[7.1]
  def change
    add_column :sections, :number_of_students, :integer, default: 0
    add_column :students, :number_of_units, :integer, default: 0
    add_column :subjects, :number_of_units, :integer, default: 0
    #remove_column :sections, :number_of_students, :integer, default: 0
    #change_column ::sections, :number_of_students, :float, default: 0
  end
end
