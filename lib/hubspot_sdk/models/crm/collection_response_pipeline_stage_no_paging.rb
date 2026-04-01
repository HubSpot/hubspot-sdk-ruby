# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Pipelines#list_stages
      class CollectionResponsePipelineStageNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::PipelineStage>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PipelineStage] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Crm::PipelineStage>]
      end
    end
  end
end
