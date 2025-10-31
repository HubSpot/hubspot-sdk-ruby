# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class CollectionResponseTimelineEventTemplateNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::CRM::TimelineEventTemplate>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::TimelineEventTemplate] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::CRM::TimelineEventTemplate>]
      end
    end
  end
end
