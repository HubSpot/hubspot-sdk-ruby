# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module MarketingEvents
        # @see HubspotSDK::Resources::Marketing::MarketingEvents::ListAssociations#delete_by_external_account
        class ListAssociationDeleteByExternalAccountParams < HubspotSDK::Internal::Type::BaseModel
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

          # @!attribute list_id
          #
          #   @return [String]
          required :list_id, String

          # @!method initialize(external_account_id:, external_event_id:, list_id:, request_options: {})
          #   @param external_account_id [String]
          #   @param external_event_id [String]
          #   @param list_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
