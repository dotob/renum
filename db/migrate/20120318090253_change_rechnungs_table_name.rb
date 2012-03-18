class ChangeRechnungsTableName < ActiveRecord::Migration
  def change
   rename_table :rechnungs, :rechnungen
  end 
end
