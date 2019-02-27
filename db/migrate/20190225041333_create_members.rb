class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :kana
      t.integer :generation
      t.text :image_id
      t.date :birthday

      t.timestamps
    end
  end
end
