class Item < ActiveRecord::Base
	belongs_to :item_type
	validates :title, presence: true

	def completed?
		completed_on != nil



    def image_fetcher
    	self.imae_url = ImageFetcher.new.fetch(self.title)
    	save

    	def to_param
    		"#{id}-#{title.paramerterize}"
    	end


	end


end
