# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module MarketingEvents
        # @see HubspotSDK::Resources::Marketing::MarketingEvents::Participations#list_breakdown_by_contact
        class ParticipationListBreakdownByContactParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute contact_identifier
          #
          #   @return [String]
          required :contact_identifier, String

          # @!attribute after
          #   The cursor indicating the position of the last retrieved item.
          #
          #   @return [String, nil]
          optional :after, String

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

          # @!method initialize(contact_identifier:, after: nil, limit: nil, state: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Marketing::MarketingEvents::ParticipationListBreakdownByContactParams}
          #   for more details.
          #
          #   @param contact_identifier [String]
          #
          #   @param after [String] The cursor indicating the position of the last retrieved item.
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
