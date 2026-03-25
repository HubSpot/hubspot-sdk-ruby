# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class CollectionResponsePipelineNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::Pipeline>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Pipeline] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Crm::Pipeline>]
      end
    end
  end
end
