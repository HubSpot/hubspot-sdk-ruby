# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicBusinessUnit < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the business unit, represented as an integer.
        #
        #   @return [Integer]
        required :id, Integer

        # @!method initialize(id:)
        #   @param id [Integer] The unique identifier for the business unit, represented as an integer.
      end
    end
  end
end
