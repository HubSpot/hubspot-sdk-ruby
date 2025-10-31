# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class ContactEmail < HubspotSDK::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::ContactEmail::Type, nil]
        optional :type, enum: -> { HubspotSDK::Conversations::ContactEmail::Type }

        # @!method initialize(email:, type: nil)
        #   @param email [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::ContactEmail::Type]

        # @see HubspotSDK::Models::Conversations::ContactEmail#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          HOME = :HOME
          WORK = :WORK

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
