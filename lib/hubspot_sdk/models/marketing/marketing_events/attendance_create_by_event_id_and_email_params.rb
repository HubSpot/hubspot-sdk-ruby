# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      module MarketingEvents
        # @see HubSpotSDK::Resources::Marketing::MarketingEvents::Attendance#create_by_event_id_and_email
        class AttendanceCreateByEventIDAndEmailParams < HubSpotSDK::Models::Marketing::BatchInputMarketingEventEmailSubscriber
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

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
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
