# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Limits#get_pipeline_limits
      class PipelineLimitResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute custom_object_types
        #
        #   @return [HubSpotSDK::Models::Crm::CustomObjectRecordLimitResponse]
        required :custom_object_types,
                 -> { HubSpotSDK::Crm::CustomObjectRecordLimitResponse },
                 api_name: :customObjectTypes

        # @!attribute hubspot_defined_object_types
        #
        #   @return [Array<HubSpotSDK::Models::Crm::LimitAndUsageForObjectType>]
        required :hubspot_defined_object_types,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::LimitAndUsageForObjectType] },
                 api_name: :hubspotDefinedObjectTypes

        # @!method initialize(custom_object_types:, hubspot_defined_object_types:)
        #   @param custom_object_types [HubSpotSDK::Models::Crm::CustomObjectRecordLimitResponse]
        #   @param hubspot_defined_object_types [Array<HubSpotSDK::Models::Crm::LimitAndUsageForObjectType>]
      end
    end
  end
end
