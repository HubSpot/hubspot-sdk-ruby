# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class IntegratorObjectResult < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the card.
          #
          #   @return [String]
          required :id, String

          # @!attribute actions
          #   A list of actions associated with the card, which can include action hooks,
          #   confirmation action hooks, or iframes.
          #
          #   @return [Array<HubspotSDK::Models::Crm::Extensions::ActionHookActionBody, HubspotSDK::Models::Crm::Extensions::IFrameActionBody>]
          required :actions,
                   -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Crm::Extensions::IntegratorObjectResult::Action] }

          # @!attribute title
          #   The title of the object card, displayed to users.
          #
          #   @return [String]
          required :title, String

          # @!attribute tokens
          #   A collection of tokens representing specific properties related to the card.
          #
          #   @return [Array<HubspotSDK::Models::Crm::Extensions::ObjectToken>]
          required :tokens, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Extensions::ObjectToken] }

          # @!attribute link_url
          #   A URL used on the title of the card
          #
          #   @return [String, nil]
          optional :link_url, String, api_name: :linkUrl

          # @!method initialize(id:, actions:, title:, tokens:, link_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Extensions::IntegratorObjectResult} for more details.
          #
          #   @param id [String] The unique identifier for the card.
          #
          #   @param actions [Array<HubspotSDK::Models::Crm::Extensions::ActionHookActionBody, HubspotSDK::Models::Crm::Extensions::IFrameActionBody>] A list of actions associated with the card, which can include action hooks, conf
          #
          #   @param title [String] The title of the object card, displayed to users.
          #
          #   @param tokens [Array<HubspotSDK::Models::Crm::Extensions::ObjectToken>] A collection of tokens representing specific properties related to the card.
          #
          #   @param link_url [String] A URL used on the title of the card

          module Action
            extend HubspotSDK::Internal::Type::Union

            variant -> { HubspotSDK::Crm::Extensions::ActionHookActionBody }

            variant -> { HubspotSDK::Crm::Extensions::IFrameActionBody }

            # @!method self.variants
            #   @return [Array(HubspotSDK::Models::Crm::Extensions::ActionHookActionBody, HubspotSDK::Models::Crm::Extensions::IFrameActionBody)]
          end
        end
      end
    end
  end
end
