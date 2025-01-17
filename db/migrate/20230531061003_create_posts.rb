class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, index: { name: "posts_by_title" }
      t.string :body
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
