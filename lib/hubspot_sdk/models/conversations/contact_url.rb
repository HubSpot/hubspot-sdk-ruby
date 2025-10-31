# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class ContactURL < HubspotSDK::Internal::Type::BaseModel
        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::ContactURL::Type, nil]
        optional :type, enum: -> { HubspotSDK::Conversations::ContactURL::Type }

        # @!method initialize(url:, type: nil)
        #   @param url [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::ContactURL::Type]

        # @see HubspotSDK::Models::Conversations::ContactURL#type
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
