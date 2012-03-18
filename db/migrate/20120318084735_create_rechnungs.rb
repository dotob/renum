class CreateRechnungs < ActiveRecord::Migration
  def change
    create_table :rechnungs do |t|
      t.integer :number
      t.string :payee
      t.decimal :total
      t.decimal :mwst
      t.decimal :netto

      t.timestamps
    end
  end
end
