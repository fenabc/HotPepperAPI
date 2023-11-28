class CreatePrefectures < ActiveRecord::Migration[6.1]
  def change
    create_table :prefectures do |t|
      t.string :large_service_area, null: false
      t.string :code, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
