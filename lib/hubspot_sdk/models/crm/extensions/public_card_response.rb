# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        # @see HubSpotSDK::Resources::Crm::Extensions::CardsDev#create
        class PublicCardResponse < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique id of the card.
          #
          #   @return [String]
          required :id, String

          # @!attribute actions
          #
          #   @return [HubSpotSDK::Models::Crm::Extensions::CardActions]
          required :actions, -> { HubSpotSDK::Crm::Extensions::CardActions }

          # @!attribute audit_history
          #   A list of actions performed on the card, including creation, deletion, and
          #   updates.
          #
          #   @return [Array<HubSpotSDK::Models::Crm::Extensions::CardAuditResponse>]
          required :audit_history,
                   -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Extensions::CardAuditResponse] },
                   api_name: :auditHistory

          # @!attribute display_
          #
          #   @return [HubSpotSDK::Models::Crm::Extensions::CardDisplayBody]
          required :display_, -> { HubSpotSDK::Crm::Extensions::CardDisplayBody }, api_name: :display

          # @!attribute fetch
          #
          #   @return [HubSpotSDK::Models::Crm::Extensions::PublicCardFetchBody]
          required :fetch, -> { HubSpotSDK::Crm::Extensions::PublicCardFetchBody }

          # @!attribute title
          #   The top-level title for this card. Displayed to users in the CRM UI.
          #
          #   @return [String]
          required :title, String

          # @!attribute created_at
          #   The date and time when the card was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time, api_name: :createdAt

          # @!attribute updated_at
          #   The date and time when the card was last updated.
          #
          #   @return [Time, nil]
          optional :updated_at, Time, api_name: :updatedAt

          # @!method initialize(id:, actions:, audit_history:, display_:, fetch:, title:, created_at: nil, updated_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Crm::Extensions::PublicCardResponse} for more details.
          #
          #   @param id [String] The unique id of the card.
          #
          #   @param actions [HubSpotSDK::Models::Crm::Extensions::CardActions]
          #
          #   @param audit_history [Array<HubSpotSDK::Models::Crm::Extensions::CardAuditResponse>] A list of actions performed on the card, including creation, deletion, and updat
          #
          #   @param display_ [HubSpotSDK::Models::Crm::Extensions::CardDisplayBody]
          #
          #   @param fetch [HubSpotSDK::Models::Crm::Extensions::PublicCardFetchBody]
          #
          #   @param title [String] The top-level title for this card. Displayed to users in the CRM UI.
          #
          #   @param created_at [Time] The date and time when the card was created.
          #
          #   @param updated_at [Time] The date and time when the card was last updated.
        end
      end
    end
  end
end
