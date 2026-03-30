# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        # @see HubspotSDK::Resources::Crm::Extensions::CardsDev#get_sample_response
        class IntegratorCardPayloadResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute response_version
          #   The number version of the response.
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::IntegratorCardPayloadResponse::ResponseVersion]
          required :response_version,
                   enum: -> { HubspotSDK::Crm::Extensions::IntegratorCardPayloadResponse::ResponseVersion },
                   api_name: :responseVersion

          # @!attribute sections
          #   A list of up to five valid card sub categories.
          #
          #   @return [Array<HubspotSDK::Models::Crm::Extensions::IntegratorObjectResult>]
          required :sections,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Extensions::IntegratorObjectResult] }

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

          # @!attribute top_level_actions
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::TopLevelActions, nil]
          optional :top_level_actions,
                   -> { HubspotSDK::Crm::Extensions::TopLevelActions },
                   api_name: :topLevelActions

          # @!method initialize(response_version:, sections:, total_count:, all_items_link_url: nil, card_label: nil, top_level_actions: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Extensions::IntegratorCardPayloadResponse} for more
          #   details.
          #
          #   @param response_version [Symbol, HubspotSDK::Models::Crm::Extensions::IntegratorCardPayloadResponse::ResponseVersion] The number version of the response.
          #
          #   @param sections [Array<HubspotSDK::Models::Crm::Extensions::IntegratorObjectResult>] A list of up to five valid card sub categories.
          #
          #   @param total_count [Integer] The total number of card properties that will be sent in this response.
          #
          #   @param all_items_link_url [String] URL to a page the integrator has built that displays all details for this card.
          #
          #   @param card_label [String] The label to be used for the `allItemsLinkUrl` link (e.g. 'See more tickets'). I
          #
          #   @param top_level_actions [HubspotSDK::Models::Crm::Extensions::TopLevelActions]

          # The number version of the response.
          #
          # @see HubspotSDK::Models::Crm::Extensions::IntegratorCardPayloadResponse#response_version
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
