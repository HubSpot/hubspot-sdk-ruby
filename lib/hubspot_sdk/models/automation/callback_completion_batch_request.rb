# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class CallbackCompletionBatchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute callback_id
        #
        #   @return [String]
        required :callback_id, String, api_name: :callbackId

        # @!attribute output_fields
        #
        #   @return [Hash{Symbol=>String}]
        required :output_fields, HubspotSDK::Internal::Type::HashOf[String], api_name: :outputFields

        # @!method initialize(callback_id:, output_fields:)
        #   @param callback_id [String]
        #   @param output_fields [Hash{Symbol=>String}]
      end
    end
  end
end
