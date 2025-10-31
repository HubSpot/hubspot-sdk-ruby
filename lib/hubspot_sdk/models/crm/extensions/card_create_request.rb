# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class CardCreateRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute actions
          #   Configuration for custom user actions on cards.
          #
          #   @return [HubspotSDK::Models::CRM::Extensions::CardActions]
          required :actions, -> { HubspotSDK::CRM::Extensions::CardActions }

          # @!attribute display_
          #   Configuration for displayed info on a card
          #
          #   @return [HubspotSDK::Models::CRM::Extensions::CardDisplayBody]
          required :display_, -> { HubspotSDK::CRM::Extensions::CardDisplayBody }, api_name: :display

          # @!attribute fetch
          #   Configuration for this card's data fetch request.
          #
          #   @return [HubspotSDK::Models::CRM::Extensions::CardFetchBody]
          required :fetch, -> { HubspotSDK::CRM::Extensions::CardFetchBody }

          # @!attribute title
          #   The top-level title for this card. Displayed to users in the CRM UI.
          #
          #   @return [String]
          required :title, String

          # @!method initialize(actions:, display_:, fetch:, title:)
          #   State of card definition to be created
          #
          #   @param actions [HubspotSDK::Models::CRM::Extensions::CardActions] Configuration for custom user actions on cards.
          #
          #   @param display_ [HubspotSDK::Models::CRM::Extensions::CardDisplayBody] Configuration for displayed info on a card
          #
          #   @param fetch [HubspotSDK::Models::CRM::Extensions::CardFetchBody] Configuration for this card's data fetch request.
          #
          #   @param title [String] The top-level title for this card. Displayed to users in the CRM UI.
        end
      end
    end
  end
end
