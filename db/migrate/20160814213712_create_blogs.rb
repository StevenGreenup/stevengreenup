class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :subject
      t.string :image
      t.string :body
      t.string :tags
      

      t.timestamps
    end
  end
end
