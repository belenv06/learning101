class AddCoordinatesToProspect < ActiveRecord::Migration[6.1]
  def change
    add_column :prospects, :latitude, :float
    add_column :prospects, :longitude, :float
  end
end
