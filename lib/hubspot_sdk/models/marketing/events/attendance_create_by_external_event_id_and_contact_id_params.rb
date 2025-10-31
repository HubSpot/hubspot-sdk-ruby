# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Events
        # @see HubspotSDK::Resources::Marketing::Events::Attendance#create_by_external_event_id_and_contact_id
        class AttendanceCreateByExternalEventIDAndContactIDParams < HubspotSDK::Models::Marketing::BatchInputMarketingEventSubscriber
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute external_event_id
          #
          #   @return [String]
          required :external_event_id, String

          # @!attribute external_account_id
          #   The accountId that is associated with this marketing event in the external event
          #   application
          #
          #   @return [String, nil]
          optional :external_account_id, String

          # @!method initialize(external_event_id:, external_account_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Marketing::Events::AttendanceCreateByExternalEventIDAndContactIDParams}
          #   for more details.
          #
          #   @param external_event_id [String]
          #
          #   @param external_account_id [String] The accountId that is associated with this marketing event in the external event
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
