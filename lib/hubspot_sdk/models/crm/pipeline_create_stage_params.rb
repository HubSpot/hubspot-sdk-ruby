# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Pipelines#create_stage
      class PipelineCreateStageParams < HubSpotSDK::Models::Crm::PipelineStageInput
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

        # @!method initialize(object_type:, pipeline_id:, request_options: {})
        #   @param object_type [String]
        #   @param pipeline_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
