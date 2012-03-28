class CreateTaxonomies < ActiveRecord::Migration
  def change
    create_table :taxonomies do |t|
      t.string :name
      t.text :description
      t.timestamps
    end

    add_index :taxonomies, :name
  end
end
