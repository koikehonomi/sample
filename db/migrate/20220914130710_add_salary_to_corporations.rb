class AddSalaryToCorporations < ActiveRecord::Migration[6.1]
  def change
    add_column :corporations, :salary, :text
  end
end
