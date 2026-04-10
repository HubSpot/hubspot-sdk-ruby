# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class ContactPhone < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute phone
        #
        #   @return [String]
        required :phone, String

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::ContactPhone::Type, nil]
        optional :type, enum: -> { HubSpotSDK::Conversations::ContactPhone::Type }

        # @!method initialize(phone:, type: nil)
        #   @param phone [String]
        #   @param type [Symbol, HubSpotSDK::Models::Conversations::ContactPhone::Type]

        # @see HubSpotSDK::Models::Conversations::ContactPhone#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          CELL = :CELL
          HOME = :HOME
          MAIN = :MAIN
          WORK = :WORK

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
