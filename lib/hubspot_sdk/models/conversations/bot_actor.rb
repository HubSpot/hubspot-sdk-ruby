# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class BotActor < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::BotActor::Type]
        required :type, enum: -> { HubspotSDK::Conversations::BotActor::Type }

        # @!attribute avatar
        #
        #   @return [String, nil]
        optional :avatar, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id:, type:, avatar: nil, name: nil)
        #   @param id [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::BotActor::Type]
        #   @param avatar [String]
        #   @param name [String]

        # @see HubspotSDK::Models::Conversations::BotActor#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          BOT = :BOT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
