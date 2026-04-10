# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class ContactURL < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::ContactURL::Type, nil]
        optional :type, enum: -> { HubSpotSDK::Conversations::ContactURL::Type }

        # @!method initialize(url:, type: nil)
        #   @param url [String]
        #   @param type [Symbol, HubSpotSDK::Models::Conversations::ContactURL::Type]

        # @see HubSpotSDK::Models::Conversations::ContactURL#type
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
