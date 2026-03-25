# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardCreateRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute actions
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::CardActions]
          required :actions, -> { HubspotSDK::Crm::Extensions::CardActions }

          # @!attribute display_
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::CardDisplayBody]
          required :display_, -> { HubspotSDK::Crm::Extensions::CardDisplayBody }, api_name: :display

          # @!attribute fetch
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::CardFetchBody]
          required :fetch, -> { HubspotSDK::Crm::Extensions::CardFetchBody }

          # @!attribute title
          #   The top-level title for this card. Displayed to users in the CRM UI.
          #
          #   @return [String]
          required :title, String

          # @!method initialize(actions:, display_:, fetch:, title:)
          #   @param actions [HubspotSDK::Models::Crm::Extensions::CardActions]
          #
          #   @param display_ [HubspotSDK::Models::Crm::Extensions::CardDisplayBody]
          #
          #   @param fetch [HubspotSDK::Models::Crm::Extensions::CardFetchBody]
          #
          #   @param title [String] The top-level title for this card. Displayed to users in the CRM UI.
        end
      end
    end
  end
end
