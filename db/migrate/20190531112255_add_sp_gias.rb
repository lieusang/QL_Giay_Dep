class AddSpGias < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :gias, :san_phams
  end
end
