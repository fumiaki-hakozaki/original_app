class CreateFactoryFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :factory_features do |t|
      t.references :factory, null: false, foreign_key: true
      t.references :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
