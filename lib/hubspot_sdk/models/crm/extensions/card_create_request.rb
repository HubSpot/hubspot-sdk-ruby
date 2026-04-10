# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CardCreateRequest < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute actions
          #
          #   @return [HubSpotSDK::Models::Crm::Extensions::CardActions]
          required :actions, -> { HubSpotSDK::Crm::Extensions::CardActions }

          # @!attribute display_
          #
          #   @return [HubSpotSDK::Models::Crm::Extensions::CardDisplayBody]
          required :display_, -> { HubSpotSDK::Crm::Extensions::CardDisplayBody }, api_name: :display

          # @!attribute fetch
          #
          #   @return [HubSpotSDK::Models::Crm::Extensions::CardFetchBody]
          required :fetch, -> { HubSpotSDK::Crm::Extensions::CardFetchBody }

          # @!attribute title
          #   The top-level title for this card. Displayed to users in the CRM UI.
          #
          #   @return [String]
          required :title, String

          # @!method initialize(actions:, display_:, fetch:, title:)
          #   @param actions [HubSpotSDK::Models::Crm::Extensions::CardActions]
          #
          #   @param display_ [HubSpotSDK::Models::Crm::Extensions::CardDisplayBody]
          #
          #   @param fetch [HubSpotSDK::Models::Crm::Extensions::CardFetchBody]
          #
          #   @param title [String] The top-level title for this card. Displayed to users in the CRM UI.
        end
      end
    end
  end
end
