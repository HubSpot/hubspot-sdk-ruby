# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicDeliveryIdentifier < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!method initialize(type:, value:)
        #   @param type [String]
        #   @param value [String]
      end
    end
  end
end
