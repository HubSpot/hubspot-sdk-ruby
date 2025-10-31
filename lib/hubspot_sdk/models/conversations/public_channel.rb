# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicChannel < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the channel.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute name
        #   The name of the channel.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id: nil, name: nil)
        #   @param id [String] The ID of the channel.
        #
        #   @param name [String] The name of the channel.
      end
    end
  end
end
