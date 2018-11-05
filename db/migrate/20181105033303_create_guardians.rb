class CreateGuardians < ActiveRecord::Migration[5.2]
  def change
    create_table :guardians do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
