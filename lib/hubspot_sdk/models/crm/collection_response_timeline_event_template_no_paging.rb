# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class CollectionResponseTimelineEventTemplateNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::TimelineEventTemplate>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::TimelineEventTemplate] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Crm::TimelineEventTemplate>]
      end
    end
  end
end
