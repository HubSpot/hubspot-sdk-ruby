# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        # @see HubspotSDK::Resources::CRM::Extensions::Cards#get_sample_response
        class IntegratorCardPayloadResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute total_count
          #   The total number of card properties that will be sent in this response.
          #
          #   @return [Integer]
          required :total_count, Integer, api_name: :totalCount

          # @!attribute all_items_link_url
          #   URL to a page the integrator has built that displays all details for this card.
          #   This URL will be displayed to users under a `See more [x]` link if there are
          #   more than five items in your response, where `[x]` is the value of `itemLabel`.
          #
          #   @return [String, nil]
          optional :all_items_link_url, String, api_name: :allItemsLinkUrl

          # @!attribute card_label
          #   The label to be used for the `allItemsLinkUrl` link (e.g. 'See more tickets').
          #   If not provided, this falls back to the card's title.
          #
          #   @return [String, nil]
          optional :card_label, String, api_name: :cardLabel

          # @!attribute response_version
          #
          #   @return [Symbol, HubspotSDK::Models::CRM::Extensions::IntegratorCardPayloadResponse::ResponseVersion, nil]
          optional :response_version,
                   enum: -> { HubspotSDK::CRM::Extensions::IntegratorCardPayloadResponse::ResponseVersion },
                   api_name: :responseVersion

          # @!attribute sections
          #   A list of up to five valid card sub categories.
          #
          #   @return [Array<HubspotSDK::Models::CRM::Extensions::IntegratorObjectResult>, nil]
          optional :sections,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Extensions::IntegratorObjectResult] }

          # @!attribute top_level_actions
          #
          #   @return [HubspotSDK::Models::CRM::Extensions::TopLevelActions, nil]
          optional :top_level_actions,
                   -> { HubspotSDK::CRM::Extensions::TopLevelActions },
                   api_name: :topLevelActions

          # @!method initialize(total_count:, all_items_link_url: nil, card_label: nil, response_version: nil, sections: nil, top_level_actions: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::CRM::Extensions::IntegratorCardPayloadResponse} for more
          #   details.
          #
          #   The card details payload, sent to HubSpot by an app in response to a data fetch
          #   request when a user visits a CRM record page.
          #
          #   @param total_count [Integer] The total number of card properties that will be sent in this response.
          #
          #   @param all_items_link_url [String] URL to a page the integrator has built that displays all details for this card.
          #
          #   @param card_label [String] The label to be used for the `allItemsLinkUrl` link (e.g. 'See more tickets'). I
          #
          #   @param response_version [Symbol, HubspotSDK::Models::CRM::Extensions::IntegratorCardPayloadResponse::ResponseVersion]
          #
          #   @param sections [Array<HubspotSDK::Models::CRM::Extensions::IntegratorObjectResult>] A list of up to five valid card sub categories.
          #
          #   @param top_level_actions [HubspotSDK::Models::CRM::Extensions::TopLevelActions]

          # @see HubspotSDK::Models::CRM::Extensions::IntegratorCardPayloadResponse#response_version
          module ResponseVersion
            extend HubspotSDK::Internal::Type::Enum

            V1 = :v1
            V3 = :v3

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
