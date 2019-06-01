class AddLoaiIdToSanPhams < ActiveRecord::Migration[5.1]
  def change
    add_column :san_phams, :loai_id, :integer
  end
end
