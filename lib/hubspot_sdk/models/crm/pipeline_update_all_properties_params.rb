# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Pipelines#update_all_properties
      class PipelineUpdateAllPropertiesParams < HubSpotSDK::Models::Crm::PipelineReplaceInput
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute object_type
        #
        #   @return [String]
        required :object_type, String

        # @!attribute pipeline_id
        #
        #   @return [String]
        required :pipeline_id, String

        # @!attribute validate_deal_stage_usages_before_delete
        #
        #   @return [Boolean, nil]
        optional :validate_deal_stage_usages_before_delete, HubSpotSDK::Internal::Type::Boolean

        # @!attribute validate_references_before_delete
        #
        #   @return [Boolean, nil]
        optional :validate_references_before_delete, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(object_type:, pipeline_id:, validate_deal_stage_usages_before_delete: nil, validate_references_before_delete: nil, request_options: {})
        #   @param object_type [String]
        #   @param pipeline_id [String]
        #   @param validate_deal_stage_usages_before_delete [Boolean]
        #   @param validate_references_before_delete [Boolean]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
