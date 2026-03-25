# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Events
        # @see HubspotSDK::Resources::Marketing::Events::Attendance#create_by_event_id_and_contact_id
        class AttendanceCreateByEventIDAndContactIDParams < HubspotSDK::Models::Marketing::BatchInputMarketingEventSubscriber
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute object_id_
          #
          #   @return [String]
          required :object_id_, String

          # @!attribute subscriber_state
          #
          #   @return [String]
          required :subscriber_state, String

          # @!method initialize(object_id_:, subscriber_state:, request_options: {})
          #   @param object_id_ [String]
          #   @param subscriber_state [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
