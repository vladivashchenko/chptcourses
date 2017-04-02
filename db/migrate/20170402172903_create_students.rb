class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.date :birthday
      t.string :education
      t.boolean :activated
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
