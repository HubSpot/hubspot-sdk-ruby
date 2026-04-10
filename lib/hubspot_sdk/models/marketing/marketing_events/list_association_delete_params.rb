# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      module MarketingEvents
        # @see HubSpotSDK::Resources::Marketing::MarketingEvents::ListAssociations#delete
        class ListAssociationDeleteParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute marketing_event_id
          #
          #   @return [String]
          required :marketing_event_id, String

          # @!attribute list_id
          #
          #   @return [String]
          required :list_id, String

          # @!method initialize(marketing_event_id:, list_id:, request_options: {})
          #   @param marketing_event_id [String]
          #   @param list_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
