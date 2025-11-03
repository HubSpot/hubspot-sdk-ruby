# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardCreateRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute actions
          #   Configuration for custom user actions on cards.
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::CardActions]
          required :actions, -> { HubspotSDK::Crm::Extensions::CardActions }

          # @!attribute display_
          #   Configuration for displayed info on a card
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::CardDisplayBody]
          required :display_, -> { HubspotSDK::Crm::Extensions::CardDisplayBody }, api_name: :display

          # @!attribute fetch
          #   Configuration for this card's data fetch request.
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::CardFetchBody]
          required :fetch, -> { HubspotSDK::Crm::Extensions::CardFetchBody }

          # @!attribute title
          #   The top-level title for this card. Displayed to users in the CRM UI.
          #
          #   @return [String]
          required :title, String

          # @!method initialize(actions:, display_:, fetch:, title:)
          #   State of card definition to be created
          #
          #   @param actions [HubspotSDK::Models::Crm::Extensions::CardActions] Configuration for custom user actions on cards.
          #
          #   @param display_ [HubspotSDK::Models::Crm::Extensions::CardDisplayBody] Configuration for displayed info on a card
          #
          #   @param fetch [HubspotSDK::Models::Crm::Extensions::CardFetchBody] Configuration for this card's data fetch request.
          #
          #   @param title [String] The top-level title for this card. Displayed to users in the CRM UI.
        end
      end
    end
  end
end
