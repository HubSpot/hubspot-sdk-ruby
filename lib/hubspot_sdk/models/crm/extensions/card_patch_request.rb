# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class CardPatchRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute actions
          #   Configuration for custom user actions on cards.
          #
          #   @return [HubspotSDK::Models::CRM::Extensions::CardActions, nil]
          optional :actions, -> { HubspotSDK::CRM::Extensions::CardActions }

          # @!attribute display_
          #   Configuration for displayed info on a card
          #
          #   @return [HubspotSDK::Models::CRM::Extensions::CardDisplayBody, nil]
          optional :display_, -> { HubspotSDK::CRM::Extensions::CardDisplayBody }, api_name: :display

          # @!attribute fetch
          #   Variant of CardFetchBody with fields as optional for patches
          #
          #   @return [HubspotSDK::Models::CRM::Extensions::CardFetchBodyPatch, nil]
          optional :fetch, -> { HubspotSDK::CRM::Extensions::CardFetchBodyPatch }

          # @!attribute title
          #   The top-level title for this card. Displayed to users in the CRM UI.
          #
          #   @return [String, nil]
          optional :title, String

          # @!method initialize(actions: nil, display_: nil, fetch: nil, title: nil)
          #   Body for a patch with optional fields
          #
          #   @param actions [HubspotSDK::Models::CRM::Extensions::CardActions] Configuration for custom user actions on cards.
          #
          #   @param display_ [HubspotSDK::Models::CRM::Extensions::CardDisplayBody] Configuration for displayed info on a card
          #
          #   @param fetch [HubspotSDK::Models::CRM::Extensions::CardFetchBodyPatch] Variant of CardFetchBody with fields as optional for patches
          #
          #   @param title [String] The top-level title for this card. Displayed to users in the CRM UI.
        end
      end
    end
  end
end
