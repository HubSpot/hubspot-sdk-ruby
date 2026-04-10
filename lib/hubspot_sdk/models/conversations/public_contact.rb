# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicContact < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute contact_profile
        #
        #   @return [HubSpotSDK::Models::Conversations::ContactProfile]
        required :contact_profile, -> { HubSpotSDK::Conversations::ContactProfile }, api_name: :contactProfile

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::PublicContact::Type]
        required :type, enum: -> { HubSpotSDK::Conversations::PublicContact::Type }

        # @!method initialize(contact_profile:, type:)
        #   @param contact_profile [HubSpotSDK::Models::Conversations::ContactProfile]
        #   @param type [Symbol, HubSpotSDK::Models::Conversations::PublicContact::Type]

        # @see HubSpotSDK::Models::Conversations::PublicContact#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          CONTACT = :CONTACT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
