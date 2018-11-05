class CreateInstitutes < ActiveRecord::Migration[5.2]
  def change
    create_table :institutes do |t|
      t.string :name
      t.string :contact
      t.string :address
      t.references :district, foreign_key: true
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
