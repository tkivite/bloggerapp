class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :image
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
