# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicChannelAccountUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute authorized
        #
        #   @return [Boolean, nil]
        optional :authorized, HubspotSDK::Internal::Type::Boolean

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
