# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicChannel < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the channel.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the channel.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, name:)
        #   @param id [String] The ID of the channel.
        #
        #   @param name [String] The name of the channel.
      end
    end
  end
end
