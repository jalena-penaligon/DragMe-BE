class ShowPerformer < ApplicationRecord
    belongs_to :performer
    belongs_to :show 
end
