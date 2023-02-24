class CreatePackages < ActiveRecord::Migration[6.1]
  def change
    create_table :packages do |t|
      t.string :name
      t.string :version
      t.string :rversion
      t.string :title
      t.string :author
      t.string :maintainer
      t.string :license
      t.string :priority
      t.text :description

      t.timestamps
    end
  end
end
