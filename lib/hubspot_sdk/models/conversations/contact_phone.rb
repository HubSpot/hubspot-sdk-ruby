# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class ContactPhone < HubspotSDK::Internal::Type::BaseModel
        # @!attribute phone
        #
        #   @return [String]
        required :phone, String

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::ContactPhone::Type, nil]
        optional :type, enum: -> { HubspotSDK::Conversations::ContactPhone::Type }

        # @!method initialize(phone:, type: nil)
        #   @param phone [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::ContactPhone::Type]

        # @see HubspotSDK::Models::Conversations::ContactPhone#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

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
