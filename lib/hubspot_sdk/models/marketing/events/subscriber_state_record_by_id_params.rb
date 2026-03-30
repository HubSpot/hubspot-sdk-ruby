# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Events
        # @see HubspotSDK::Resources::Marketing::Events::SubscriberState#record_by_id
        class SubscriberStateRecordByIDParams < HubspotSDK::Models::Marketing::BatchInputMarketingEventSubscriber
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute external_event_id
          #
          #   @return [String]
          required :external_event_id, String

          # @!attribute subscriber_state
          #
          #   @return [String]
          required :subscriber_state, String

          # @!attribute external_account_id
          #
          #   @return [String]
          required :external_account_id, String

          # @!method initialize(external_event_id:, subscriber_state:, external_account_id:, request_options: {})
          #   @param external_event_id [String]
          #   @param subscriber_state [String]
          #   @param external_account_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
