class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.string :product
      t.string :key

      t.timestamps null: false
    end
  end
end
