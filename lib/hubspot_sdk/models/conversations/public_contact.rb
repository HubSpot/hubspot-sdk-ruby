# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicContact < HubspotSDK::Internal::Type::BaseModel
        # @!attribute contact_profile
        #
        #   @return [HubspotSDK::Models::Conversations::ContactProfile]
        required :contact_profile, -> { HubspotSDK::Conversations::ContactProfile }, api_name: :contactProfile

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicContact::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicContact::Type }

        # @!method initialize(contact_profile:, type:)
        #   @param contact_profile [HubspotSDK::Models::Conversations::ContactProfile]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicContact::Type]

        # @see HubspotSDK::Models::Conversations::PublicContact#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          CONTACT = :CONTACT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
