class AddUrlToSection < ActiveRecord::Migration
  def change
    add_column :sections, :url, :string
  end
end
