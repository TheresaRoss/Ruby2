class CreateStudentdata < ActiveRecord::Migration[7.0]
  def change
    create_table :studentdata do |t|
      t.string :name
      t.integer :score

      t.timestamps
    end
  end
end
