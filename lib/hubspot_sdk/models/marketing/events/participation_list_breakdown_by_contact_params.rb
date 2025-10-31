# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Events
        # @see HubspotSDK::Resources::Marketing::Events::Participations#list_breakdown_by_contact
        class ParticipationListBreakdownByContactParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

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

          # @!method initialize(after: nil, limit: nil, state: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Marketing::Events::ParticipationListBreakdownByContactParams}
          #   for more details.
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
