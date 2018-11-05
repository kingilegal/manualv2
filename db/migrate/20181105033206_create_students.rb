class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.references :grade, foreign_key: true
      t.references :institute, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
