class AddVisionToCorporations < ActiveRecord::Migration[6.1]
  def change
    add_column :corporations, :vision, :text
  end
end
