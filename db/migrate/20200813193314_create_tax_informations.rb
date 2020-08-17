class CreateTaxInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :tax_informations do |t|
      t.integer :w2_wages
      t.integer :capital_gains
      t.integer :unemployment_insurance
      t.integer :self_employment

      t.timestamps
    end
  end
end
