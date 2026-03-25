# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicExecutionTranslationRule < HubspotSDK::Internal::Type::BaseModel
        # @!attribute conditions
        #
        #   @return [Hash{Symbol=>Object}]
        required :conditions, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]

        # @!attribute label_name
        #
        #   @return [String]
        required :label_name, String, api_name: :labelName

        # @!method initialize(conditions:, label_name:)
        #   @param conditions [Hash{Symbol=>Object}]
        #   @param label_name [String]
      end
    end
  end
end
