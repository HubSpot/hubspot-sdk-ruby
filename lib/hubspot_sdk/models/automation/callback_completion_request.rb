# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class CallbackCompletionRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute output_fields
        #
        #   @return [Hash{Symbol=>String}]
        required :output_fields, HubspotSDK::Internal::Type::HashOf[String], api_name: :outputFields

        # @!method initialize(output_fields:)
        #   @param output_fields [Hash{Symbol=>String}]
      end
    end
  end
end
