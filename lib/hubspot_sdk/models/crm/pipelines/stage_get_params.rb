# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Pipelines
        # @see HubspotSDK::Resources::Crm::Pipelines::Stages#get
        class StageGetParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

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
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
