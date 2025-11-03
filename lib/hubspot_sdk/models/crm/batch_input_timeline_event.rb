# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchInputTimelineEvent < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   A collection of timeline events we want to create.
        #
        #   @return [Array<HubspotSDK::Models::Crm::TimelineEvent>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::TimelineEvent] }

        # @!method initialize(inputs:)
        #   Used to create timeline events in batches.
        #
        #   @param inputs [Array<HubspotSDK::Models::Crm::TimelineEvent>] A collection of timeline events we want to create.
      end
    end
  end
end
