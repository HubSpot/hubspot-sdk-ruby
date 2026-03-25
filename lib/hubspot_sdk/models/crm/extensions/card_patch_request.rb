# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardPatchRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute actions
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::CardActions, nil]
          optional :actions, -> { HubspotSDK::Crm::Extensions::CardActions }

          # @!attribute display_
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::CardDisplayBody, nil]
          optional :display_, -> { HubspotSDK::Crm::Extensions::CardDisplayBody }, api_name: :display

          # @!attribute fetch
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::CardFetchBodyPatch, nil]
          optional :fetch, -> { HubspotSDK::Crm::Extensions::CardFetchBodyPatch }

          # @!attribute title
          #   The top-level title for this card. Displayed to users in the CRM UI.
          #
          #   @return [String, nil]
          optional :title, String

          # @!method initialize(actions: nil, display_: nil, fetch: nil, title: nil)
          #   @param actions [HubspotSDK::Models::Crm::Extensions::CardActions]
          #
          #   @param display_ [HubspotSDK::Models::Crm::Extensions::CardDisplayBody]
          #
          #   @param fetch [HubspotSDK::Models::Crm::Extensions::CardFetchBodyPatch]
          #
          #   @param title [String] The top-level title for this card. Displayed to users in the CRM UI.
        end
      end
    end
  end
end
