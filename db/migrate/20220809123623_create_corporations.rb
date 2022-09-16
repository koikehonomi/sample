class CreateCorporations < ActiveRecord::Migration[6.1]
  def change
    create_table :corporations do |t|
      t.string :name
      t.string :genre
      t.text :work
      t.text :strong
      t.text :competition
      t.text :seminer
      t.text :workshop
      t.text :internship
      t.text :visit
      t.text :homepage
      t.text :article
      t.text :question
      t.timestamps
    end
  end
end
