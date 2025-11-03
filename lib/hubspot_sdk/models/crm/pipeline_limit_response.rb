# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Limits#get_pipeline_limits
      class PipelineLimitResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute custom_object_types
        #
        #   @return [HubspotSDK::Models::Crm::CustomObjectRecordLimitResponse]
        required :custom_object_types,
                 -> { HubspotSDK::Crm::CustomObjectRecordLimitResponse },
                 api_name: :customObjectTypes

        # @!attribute hubspot_defined_object_types
        #
        #   @return [Array<HubspotSDK::Models::Crm::LimitAndUsageForObjectType>]
        required :hubspot_defined_object_types,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::LimitAndUsageForObjectType] },
                 api_name: :hubspotDefinedObjectTypes

        # @!method initialize(custom_object_types:, hubspot_defined_object_types:)
        #   @param custom_object_types [HubspotSDK::Models::Crm::CustomObjectRecordLimitResponse]
        #   @param hubspot_defined_object_types [Array<HubspotSDK::Models::Crm::LimitAndUsageForObjectType>]
      end
    end
  end
end
