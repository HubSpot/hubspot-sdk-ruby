# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Pipelines#list_stages
      class CollectionResponsePipelineStageNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PipelineStage>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PipelineStage] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Crm::PipelineStage>]
      end
    end
  end
end
