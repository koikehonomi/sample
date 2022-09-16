class AddImageToCorporations < ActiveRecord::Migration[6.1]
  def change
    add_column :corporations, :image, :string
  end
end
