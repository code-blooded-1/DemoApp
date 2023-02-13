class CreatePanDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :pan_details do |t|
      t.string :number
      
      t.timestamps
    end
  end
end
