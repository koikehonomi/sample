class AddJobToCorporations < ActiveRecord::Migration[6.1]
  def change
    add_column :corporations, :job, :text
  end
end
