# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class EventVisibilityChange < HubspotSDK::Internal::Type::BaseModel
        # @!attribute event_type
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::EventVisibilityChange::EventType]
        required :event_type,
                 enum: -> {
                   HubspotSDK::Cms::EventVisibilityChange::EventType
                 },
                 api_name: :eventType

        # @!attribute updated_at
        #
        #   @return [Integer]
        required :updated_at, Integer, api_name: :updatedAt

        # @!attribute show_in_reporting
        #
        #   @return [Boolean, nil]
        optional :show_in_reporting, HubspotSDK::Internal::Type::Boolean, api_name: :showInReporting

        # @!attribute show_in_timeline
        #
        #   @return [Boolean, nil]
        optional :show_in_timeline, HubspotSDK::Internal::Type::Boolean, api_name: :showInTimeline

        # @!attribute show_in_workflows
        #
        #   @return [Boolean, nil]
        optional :show_in_workflows, HubspotSDK::Internal::Type::Boolean, api_name: :showInWorkflows

        # @!method initialize(event_type:, updated_at:, show_in_reporting: nil, show_in_timeline: nil, show_in_workflows: nil)
        #   @param event_type [Symbol, HubspotSDK::Models::Cms::EventVisibilityChange::EventType]
        #   @param updated_at [Integer]
        #   @param show_in_reporting [Boolean]
        #   @param show_in_timeline [Boolean]
        #   @param show_in_workflows [Boolean]

        # @see HubspotSDK::Models::Cms::EventVisibilityChange#event_type
        module EventType
          extend HubspotSDK::Internal::Type::Enum

          ALL = :ALL
          ATTENTION_SPAN = :ATTENTION_SPAN
          MEDIA_PLAYS = :MEDIA_PLAYS
          MEDIA_PLAYS_PERCENT = :MEDIA_PLAYS_PERCENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
