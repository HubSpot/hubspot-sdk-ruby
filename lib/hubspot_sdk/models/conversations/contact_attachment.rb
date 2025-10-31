# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class ContactAttachment < HubspotSDK::Internal::Type::BaseModel
        # @!attribute contact_profile
        #
        #   @return [HubspotSDK::Models::Conversations::ContactProfile]
        required :contact_profile, -> { HubspotSDK::Conversations::ContactProfile }, api_name: :contactProfile

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::ContactAttachment::Type]
        required :type, enum: -> { HubspotSDK::Conversations::ContactAttachment::Type }

        # @!method initialize(contact_profile:, type:)
        #   @param contact_profile [HubspotSDK::Models::Conversations::ContactProfile]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::ContactAttachment::Type]

        # @see HubspotSDK::Models::Conversations::ContactAttachment#type
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
