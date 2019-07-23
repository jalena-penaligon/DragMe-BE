class ShowPerformer < ApplicationRecord
    belongs_to :performer
    belongs_to :show 
    def self.add_performers(performers, show)
        performers.each do |performer|
            if performer.class == Integer 
                performer = Performer.find(performer)
            else 
                performer = Performer.create!(name: performer)
            end
         ShowPerformer.create(performer_id: performer.id, show_id: show)
        end
    end
    
        
    def self.update_performers(performers, show)
        if performers != show.performers.pluck(:id)
            ShowPerformer.clear_performers(show.performers, show.id)
            ShowPerformer.add_performers(performers, show.id)
        end
    end
    
    def self.clear_performers(performers, show)
        ids = performers.pluck(:id)
        ids.each do |id|
            show_performer = ShowPerformer.find_by(performer_id: id, show_id: show)
            ShowPerformer.destroy(show_performer.id)
        end
    end
end
