class Item < ActiveRecord::Base
	belongs_to :item_type
	validates :title, presence: true

	def completed?
		completed_on != nil
    end



    def image_fetcher
    	self.image_url = ImageFetcher.new.fetch(self.title)
    	save
    end

	def to_param
		"#{id}-#{title.parameterize}"
	end


end
