# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class QuickReply < HubspotSDK::Internal::Type::BaseModel
        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!attribute value_type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::QuickReply::ValueType]
        required :value_type,
                 enum: -> {
                   HubspotSDK::Conversations::QuickReply::ValueType
                 },
                 api_name: :valueType

        # @!attribute label
        #
        #   @return [String, nil]
        optional :label, String

        # @!method initialize(value:, value_type:, label: nil)
        #   @param value [String]
        #   @param value_type [Symbol, HubspotSDK::Models::Conversations::QuickReply::ValueType]
        #   @param label [String]

        # @see HubspotSDK::Models::Conversations::QuickReply#value_type
        module ValueType
          extend HubspotSDK::Internal::Type::Enum

          TEXT = :TEXT
          URL = :URL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
