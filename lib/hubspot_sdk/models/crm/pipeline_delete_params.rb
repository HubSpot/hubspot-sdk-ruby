# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Pipelines#delete
      class PipelineDeleteParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute object_type
        #
        #   @return [String]
        required :object_type, String

        # @!attribute validate_deal_stage_usages_before_delete
        #
        #   @return [Boolean, nil]
        optional :validate_deal_stage_usages_before_delete, HubspotSDK::Internal::Type::Boolean

        # @!attribute validate_references_before_delete
        #
        #   @return [Boolean, nil]
        optional :validate_references_before_delete, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(object_type:, validate_deal_stage_usages_before_delete: nil, validate_references_before_delete: nil, request_options: {})
        #   @param object_type [String]
        #   @param validate_deal_stage_usages_before_delete [Boolean]
        #   @param validate_references_before_delete [Boolean]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
