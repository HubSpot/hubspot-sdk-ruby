# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Events
        # @see HubspotSDK::Resources::Marketing::Events::Participations#get_by_id
        class ParticipationGetByIDParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute marketing_event_id
          #
          #   @return [Integer]
          required :marketing_event_id, Integer

          # @!method initialize(marketing_event_id:, request_options: {})
          #   @param marketing_event_id [Integer]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
