# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Events
        # @see HubspotSDK::Resources::Marketing::Events::ListAssociations#delete
        class ListAssociationDeleteParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

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
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
