class Document < ApplicationRecord
  belongs_to :requirement, 
              :class_name => 'Requirement'
              :foreign_key  => "documento_id" 
end
