# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BoundedNextPage < HubspotSDK::Internal::Type::BaseModel
        # @!attribute offset
        #
        #   @return [Integer]
        required :offset, Integer

        # @!attribute link
        #
        #   @return [String, nil]
        optional :link, String

        # @!method initialize(offset:, link: nil)
        #   @param offset [Integer]
        #   @param link [String]
      end
    end
  end
end
