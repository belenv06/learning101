class CreateProspects < ActiveRecord::Migration[6.1]
  def change
    create_table :prospects do |t|
      t.string :name
      t.string :lastname
      t.string :address
      t.integer :cellphone
      t.string :email
      t.references :status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
