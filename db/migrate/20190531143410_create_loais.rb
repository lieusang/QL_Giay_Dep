class CreateLoais < ActiveRecord::Migration[5.1]
  def change
    create_table :loais do |t|
      t.string :ten_loai
      t.integer :gioi_tinh

      t.timestamps
    end
  end
end
