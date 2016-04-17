class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :ref
      t.string :first_name
      t.string :last_name
      t.boolean :gender
      t.string :id_num
      t.string :id_type
      t.string :occupation
      t.string :employer
      t.string :position
      t.string :country
      t.string :province
      t.string :city
      t.string :address
      t.string :zipcode
      t.string :cellphone
      t.string :telphone

      t.timestamps null: false
    end
  end
end
