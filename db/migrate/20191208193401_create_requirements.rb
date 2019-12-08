class CreateRequirements < ActiveRecord::Migration[5.2]
  def change
    create_table :requirements do |t|
      t.string :type
      t.string :status
      t.float :nota
      t.datetime :dataApresentacao
      t.references :banca, foreign_key: true
      t.references :orientador, foreign_key: true
      t.references :aluno, foreign_key: true
      t.references :documento, foreign_key: true

      t.timestamps
    end
    
  end
end
