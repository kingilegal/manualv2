class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :name
      t.references :institute, foreign_key: true
      t.integer :number_student
      t.string :director
      t.string :daytime

      t.timestamps
    end
  end
end
