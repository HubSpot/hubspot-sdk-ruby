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
        #   @return [String]
        required :value_type, String, api_name: :valueType

        # @!attribute label
        #
        #   @return [String, nil]
        optional :label, String

        # @!method initialize(value:, value_type:, label: nil)
        #   @param value [String]
        #   @param value_type [String]
        #   @param label [String]
      end
    end
  end
end
