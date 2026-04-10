# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class IntegratorObjectResult < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the card.
          #
          #   @return [String]
          required :id, String

          # @!attribute actions
          #   A list of actions associated with the card, which can include action hooks,
          #   confirmation action hooks, or iframes.
          #
          #   @return [Array<HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody, HubSpotSDK::Models::Crm::Extensions::IFrameActionBody>]
          required :actions,
                   -> { HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Crm::Extensions::IntegratorObjectResult::Action] }

          # @!attribute title
          #   The top-level title for this card. Displayed to users in the CRM UI.
          #
          #   @return [String]
          required :title, String

          # @!attribute tokens
          #   A collection of tokens representing specific properties related to the card.
          #
          #   @return [Array<HubSpotSDK::Models::Crm::Extensions::ObjectToken>]
          required :tokens, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Extensions::ObjectToken] }

          # @!attribute link_url
          #   A URL used on the title of the card
          #
          #   @return [String, nil]
          optional :link_url, String, api_name: :linkUrl

          # @!method initialize(id:, actions:, title:, tokens:, link_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Crm::Extensions::IntegratorObjectResult} for more details.
          #
          #   @param id [String] The unique identifier for the card.
          #
          #   @param actions [Array<HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody, HubSpotSDK::Models::Crm::Extensions::IFrameActionBody>] A list of actions associated with the card, which can include action hooks, conf
          #
          #   @param title [String] The top-level title for this card. Displayed to users in the CRM UI.
          #
          #   @param tokens [Array<HubSpotSDK::Models::Crm::Extensions::ObjectToken>] A collection of tokens representing specific properties related to the card.
          #
          #   @param link_url [String] A URL used on the title of the card

          module Action
            extend HubSpotSDK::Internal::Type::Union

            variant -> { HubSpotSDK::Crm::Extensions::ActionHookActionBody }

            variant -> { HubSpotSDK::Crm::Extensions::IFrameActionBody }

            # @!method self.variants
            #   @return [Array(HubSpotSDK::Models::Crm::Extensions::ActionHookActionBody, HubSpotSDK::Models::Crm::Extensions::IFrameActionBody)]
          end
        end
      end
    end
  end
end
