class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :film
      t.text :citation
      t.string :realisateur
      t.string :image

      t.timestamps
    end
  end
end
