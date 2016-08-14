class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.references :user
      t.references :emotion
      t.timestamps
    end
  end
end
