# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class ContactEmail < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::ContactEmail::Type, nil]
        optional :type, enum: -> { HubSpotSDK::Conversations::ContactEmail::Type }

        # @!method initialize(email:, type: nil)
        #   @param email [String]
        #   @param type [Symbol, HubSpotSDK::Models::Conversations::ContactEmail::Type]

        # @see HubSpotSDK::Models::Conversations::ContactEmail#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          HOME = :HOME
          WORK = :WORK

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
