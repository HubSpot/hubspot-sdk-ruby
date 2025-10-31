# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Limits#get_pipeline_limits
      class PipelineLimitResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute custom_object_types
        #
        #   @return [HubspotSDK::Models::CRM::CustomObjectRecordLimitResponse]
        required :custom_object_types,
                 -> { HubspotSDK::CRM::CustomObjectRecordLimitResponse },
                 api_name: :customObjectTypes

        # @!attribute hubspot_defined_object_types
        #
        #   @return [Array<HubspotSDK::Models::CRM::LimitAndUsageForObjectType>]
        required :hubspot_defined_object_types,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::LimitAndUsageForObjectType] },
                 api_name: :hubspotDefinedObjectTypes

        # @!method initialize(custom_object_types:, hubspot_defined_object_types:)
        #   @param custom_object_types [HubspotSDK::Models::CRM::CustomObjectRecordLimitResponse]
        #   @param hubspot_defined_object_types [Array<HubspotSDK::Models::CRM::LimitAndUsageForObjectType>]
      end
    end
  end
end
