class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :link
      t.date :dataEnvio

      t.timestamps
    end
  end
end
