# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class BoundedNextPage < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute offset
        #   The offset value indicating the starting point for the next set of results.
        #
        #   @return [Integer]
        required :offset, Integer

        # @!attribute link
        #   A URL that can be used to retrieve the next set of results.
        #
        #   @return [String, nil]
        optional :link, String

        # @!method initialize(offset:, link: nil)
        #   @param offset [Integer] The offset value indicating the starting point for the next set of results.
        #
        #   @param link [String] A URL that can be used to retrieve the next set of results.
      end
    end
  end
end
