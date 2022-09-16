class AddHumanToCorporations < ActiveRecord::Migration[6.1]
  def change
    add_column :corporations, :human, :text
  end
end
