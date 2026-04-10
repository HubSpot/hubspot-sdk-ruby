# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      module MarketingEvents
        # @see HubSpotSDK::Resources::Marketing::MarketingEvents::ListAssociations#list_by_external_account
        class ListAssociationListByExternalAccountParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute external_account_id
          #
          #   @return [String]
          required :external_account_id, String

          # @!attribute external_event_id
          #
          #   @return [String]
          required :external_event_id, String

          # @!method initialize(external_account_id:, external_event_id:, request_options: {})
          #   @param external_account_id [String]
          #   @param external_event_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
