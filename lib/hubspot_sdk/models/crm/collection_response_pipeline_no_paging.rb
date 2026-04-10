# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Pipelines#list
      class CollectionResponsePipelineNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::Pipeline>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Pipeline] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Crm::Pipeline>]
      end
    end
  end
end
