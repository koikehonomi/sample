class AddMissionToCorporations < ActiveRecord::Migration[6.1]
  def change
    add_column :corporations, :mission, :text
  end
end
