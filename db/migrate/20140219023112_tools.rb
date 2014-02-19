class Tools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
    t.string :name
    end
  end
end
