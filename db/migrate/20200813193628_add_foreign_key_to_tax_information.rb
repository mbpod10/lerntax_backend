class AddForeignKeyToTaxInformation < ActiveRecord::Migration[6.0]
  def change
    add_column :tax_informations, :information_id, :integer
  end
end
