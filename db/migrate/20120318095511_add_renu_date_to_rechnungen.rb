class AddRenuDateToRechnungen < ActiveRecord::Migration
  def change
    add_column :rechnungen, :renudate, :date
  end
end
