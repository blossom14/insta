class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.integer :emotion
      t.references :user
      t.timestamps
    end
  end
end
