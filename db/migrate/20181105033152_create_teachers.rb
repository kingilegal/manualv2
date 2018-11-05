class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.references :institute, foreign_key: true
      t.string :subject
      t.references :grade, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
