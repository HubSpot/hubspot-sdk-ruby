# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Pipelines#list
      class CollectionResponsePipelineNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::CRM::Pipeline>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Pipeline] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::CRM::Pipeline>]
      end
    end
  end
end
