# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class SystemActor < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::SystemActor::Type]
        required :type, enum: -> { HubspotSDK::Conversations::SystemActor::Type }

        # @!method initialize(id:, type:)
        #   @param id [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::SystemActor::Type]

        # @see HubspotSDK::Models::Conversations::SystemActor#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          SYSTEM = :SYSTEM

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
