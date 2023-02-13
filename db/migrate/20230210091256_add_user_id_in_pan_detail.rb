class AddUserIdInPanDetail < ActiveRecord::Migration[7.0]
  def change
    add_reference :pan_details, :user, foreign_key: true
  end
end
