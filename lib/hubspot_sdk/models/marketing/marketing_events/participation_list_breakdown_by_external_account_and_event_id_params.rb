# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module MarketingEvents
        # @see HubspotSDK::Resources::Marketing::MarketingEvents::Participations#list_breakdown_by_external_account_and_event_id
        class ParticipationListBreakdownByExternalAccountAndEventIDParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute external_account_id
          #
          #   @return [String]
          required :external_account_id, String

          # @!attribute external_event_id
          #
          #   @return [String]
          required :external_event_id, String

          # @!attribute after
          #   The cursor indicating the position of the last retrieved item.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute contact_identifier
          #   The identifier of the Contact. It may be email or internal id.
          #
          #   @return [String, nil]
          optional :contact_identifier, String

          # @!attribute limit
          #   The limit for response size. The default value is 10, the max number is 100
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute state
          #   The participation state value. It may be REGISTERED, CANCELLED, ATTENDED,
          #   NO_SHOW
          #
          #   @return [String, nil]
          optional :state, String

          # @!method initialize(external_account_id:, external_event_id:, after: nil, contact_identifier: nil, limit: nil, state: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Marketing::MarketingEvents::ParticipationListBreakdownByExternalAccountAndEventIDParams}
          #   for more details.
          #
          #   @param external_account_id [String]
          #
          #   @param external_event_id [String]
          #
          #   @param after [String] The cursor indicating the position of the last retrieved item.
          #
          #   @param contact_identifier [String] The identifier of the Contact. It may be email or internal id.
          #
          #   @param limit [Integer] The limit for response size. The default value is 10, the max number is 100
          #
          #   @param state [String] The participation state value. It may be REGISTERED, CANCELLED, ATTENDED, NO_SHO
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
