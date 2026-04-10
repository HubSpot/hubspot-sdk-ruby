# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CardPatchRequest < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute actions
          #
          #   @return [HubSpotSDK::Models::Crm::Extensions::CardActions, nil]
          optional :actions, -> { HubSpotSDK::Crm::Extensions::CardActions }

          # @!attribute display_
          #
          #   @return [HubSpotSDK::Models::Crm::Extensions::CardDisplayBody, nil]
          optional :display_, -> { HubSpotSDK::Crm::Extensions::CardDisplayBody }, api_name: :display

          # @!attribute fetch
          #
          #   @return [HubSpotSDK::Models::Crm::Extensions::CardFetchBodyPatch, nil]
          optional :fetch, -> { HubSpotSDK::Crm::Extensions::CardFetchBodyPatch }

          # @!attribute title
          #   The top-level title for this card. Displayed to users in the CRM UI.
          #
          #   @return [String, nil]
          optional :title, String

          # @!method initialize(actions: nil, display_: nil, fetch: nil, title: nil)
          #   @param actions [HubSpotSDK::Models::Crm::Extensions::CardActions]
          #
          #   @param display_ [HubSpotSDK::Models::Crm::Extensions::CardDisplayBody]
          #
          #   @param fetch [HubSpotSDK::Models::Crm::Extensions::CardFetchBodyPatch]
          #
          #   @param title [String] The top-level title for this card. Displayed to users in the CRM UI.
        end
      end
    end
  end
end
