class AddSpCtsp < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :chi_tiet_san_phams, :san_phams
  end
end
