class Requirement < ApplicationRecord
  has_many :banca, 
          :class_name => "User", 
          :foreign_key  => "banca_id" 
  has_one :orientador , 
          :class_name => "User", 
          :foreign_key  => "orientador_id" 
  has_one :aluno, 
          :class_name => "User", 
          :foreign_key  => "aluno_id" 
  has_one :documento, 
          :class_name => "Document",
          :foreign_key  => "documento_id" 
end
