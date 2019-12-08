class User < ApplicationRecord
    belongs_to :requirement, 
                :class_name => "Requirement",
                :foreign_key  => "banca_id" 
    belongs_to :requirement, 
                :class_name => "Requirement",
                :foreign_key  => "orientador_id" 
    belongs_to :requirement, 
                :class_name => "Requirement",
                :foreign_key  => "aluno_id" 
end
