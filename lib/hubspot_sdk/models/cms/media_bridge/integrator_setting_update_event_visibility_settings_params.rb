# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::IntegratorSettings#update_event_visibility_settings
        class IntegratorSettingUpdateEventVisibilitySettingsParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute event_type
          #
          #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams::EventType]
          required :event_type,
                   enum: -> {
                     HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams::EventType
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

          # @!method initialize(event_type:, updated_at:, show_in_reporting: nil, show_in_timeline: nil, show_in_workflows: nil, request_options: {})
          #   @param event_type [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams::EventType]
          #   @param updated_at [Integer]
          #   @param show_in_reporting [Boolean]
          #   @param show_in_timeline [Boolean]
          #   @param show_in_workflows [Boolean]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

          module EventType
            extend HubspotSDK::Internal::Type::Enum

            ALL = :ALL
            MEDIA_PLAYS = :MEDIA_PLAYS
            MEDIA_PLAYS_PERCENT = :MEDIA_PLAYS_PERCENT
            ATTENTION_SPAN = :ATTENTION_SPAN

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
