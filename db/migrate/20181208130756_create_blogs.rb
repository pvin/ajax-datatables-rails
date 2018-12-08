class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :description
      t.string :comments
      t.string :tag

      t.timestamps
    end
  end
end
