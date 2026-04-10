# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicChannelAccountUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute authorized
        #
        #   @return [Boolean, nil]
        optional :authorized, HubSpotSDK::Internal::Type::Boolean

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(authorized: nil, name: nil)
        #   @param authorized [Boolean]
        #   @param name [String]
      end
    end
  end
end
