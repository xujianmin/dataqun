class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :ref
      t.string :name
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
      t.string :post_code
      t.string :cellphone
      t.string :telphone

      t.timestamps null: false
    end
  end
end
