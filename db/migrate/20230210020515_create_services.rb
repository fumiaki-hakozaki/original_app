class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :service_name, null: false
      t.integer :price
      t.string :content
      t.references :factory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
