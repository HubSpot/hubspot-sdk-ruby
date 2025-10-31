# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class CollectionResponsePipelineStageNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::CRM::PipelineStage>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PipelineStage] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::CRM::PipelineStage>]
      end
    end
  end
end
