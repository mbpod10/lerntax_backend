class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.string :name
      t.integer :age
      t.string :marital_status
      t.string :state
      t.boolean :dependent

      t.timestamps
    end
  end
end
