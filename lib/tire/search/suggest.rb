module Tire
	module Search

		# http://www.elasticsearch.org/guide/reference/api/search/suggest.html
		#
		class Suggest

      def initialize(text, suggester)
				suggestion = {}
				suggestion.update({:text => text})
				suggestion.update(suggester)
				@hash = {:suggestion => suggestion}
      end

      def to_json(options={})
        to_hash.to_json
      end

      def to_hash
				@hash
      end

    end
	end
end
