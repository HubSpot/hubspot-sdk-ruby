# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class EmailActor < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::EmailActor::Type]
        required :type, enum: -> { HubspotSDK::Conversations::EmailActor::Type }

        # @!method initialize(id:, email:, type:)
        #   @param id [String]
        #   @param email [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::EmailActor::Type]

        # @see HubspotSDK::Models::Conversations::EmailActor#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          EMAIL = :EMAIL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
