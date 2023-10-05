class CreateSoftwares < ActiveRecord::Migration[7.0]
  def change
    create_table :softwares do |t|
      t.string :name
      t.string :license_count

      t.timestamps
    end
  end
end
