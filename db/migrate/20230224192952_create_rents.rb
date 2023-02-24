class CreateRents < ActiveRecord::Migration[7.0]
  def change
    create_table :rents do |t|
      t.decimal :price, :decimal, :precision => 8, :scale =>2
      t.boolean :status
      t.datetime :rent_date
      t.datetime :devolution_date
      t.integer :car_id
      t.integer :client_id

      t.timestamps
    end
  end
end
