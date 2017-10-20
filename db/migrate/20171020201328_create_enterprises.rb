class CreateEnterprises < ActiveRecord::Migration[5.1]
  def change
    create_table :enterprises do |t|
      t.string :name
      t.string :city
      t.string :country
      t.string :address

      t.timestamps
    end
  end
end
