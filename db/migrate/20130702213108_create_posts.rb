class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.timestamps
    end
    Post.create(title: "My first post", body: "And this is the post's content.")
  end

  def down
    drop_table :posts
  end
end
