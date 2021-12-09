class Document < ApplicationRecord
  belongs_to :document_type
  belongs_to :expense
  belongs_to :supplier
end
