class CreateBulkMailers < ActiveRecord::Migration[7.1]
  def change
    create_table :bulk_mailers do |t|
      t.string :to
      t.string :cc
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
