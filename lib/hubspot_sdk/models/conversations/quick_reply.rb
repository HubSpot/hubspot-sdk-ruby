# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class QuickReply < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!attribute value_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::QuickReply::ValueType]
        required :value_type,
                 enum: -> {
                   HubSpotSDK::Conversations::QuickReply::ValueType
                 },
                 api_name: :valueType

        # @!attribute label
        #
        #   @return [String, nil]
        optional :label, String

        # @!method initialize(value:, value_type:, label: nil)
        #   @param value [String]
        #   @param value_type [Symbol, HubSpotSDK::Models::Conversations::QuickReply::ValueType]
        #   @param label [String]

        # @see HubSpotSDK::Models::Conversations::QuickReply#value_type
        module ValueType
          extend HubSpotSDK::Internal::Type::Enum

          TEXT = :TEXT
          URL = :URL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
