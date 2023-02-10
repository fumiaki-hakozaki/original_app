class CreateFactories < ActiveRecord::Migration[6.1]
  def change
    create_table :factories do |t|
    t.string "factory_name", null: false
    t.text "summary", null: false
    t.string "address", null: false
    t.float "latitude"
    t.float "longitude"
    t.text "image"

    t.timestamps
    end
  end
end
