module Spree::HomeControllerDecorator
	# include Spree::CacheHelper
    def index
		@searcher = build_searcher(params.merge(include_images: true, current_store_id: current_store.id))
		@products = @searcher.retrieve_products
    end
end  	
Spree::HomeController.prepend Spree::HomeControllerDecorator 