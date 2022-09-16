class AddWelfareToCorporations < ActiveRecord::Migration[6.1]
  def change
    add_column :corporations, :welfare, :text
  end
end
