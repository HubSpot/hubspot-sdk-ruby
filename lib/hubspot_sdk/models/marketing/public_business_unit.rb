# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicBusinessUnit < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer]
        required :id, Integer

        # @!method initialize(id:)
        #   @param id [Integer]
      end
    end
  end
end
