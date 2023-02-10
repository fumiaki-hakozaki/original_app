class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :content, null: false
      t.text :image
      t.references :user, null: false, foreign_key: true
      t.references :factory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
