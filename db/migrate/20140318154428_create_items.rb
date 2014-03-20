class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :classification
      t.text :owner
      t.integer :classification_id


      t.timestamps
    end
  end
end

