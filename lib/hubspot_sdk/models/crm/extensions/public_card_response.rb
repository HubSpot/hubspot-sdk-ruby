# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        # @see HubspotSDK::Resources::Crm::Extensions::Cards#create
        class PublicCardResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute actions
          #   Configuration for custom user actions on cards.
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::CardActions]
          required :actions, -> { HubspotSDK::Crm::Extensions::CardActions }

          # @!attribute audit_history
          #
          #   @return [Array<HubspotSDK::Models::Crm::Extensions::CardAuditResponse>]
          required :audit_history,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Extensions::CardAuditResponse] },
                   api_name: :auditHistory

          # @!attribute display_
          #   Configuration for displayed info on a card
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::CardDisplayBody]
          required :display_, -> { HubspotSDK::Crm::Extensions::CardDisplayBody }, api_name: :display

          # @!attribute fetch
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::PublicCardFetchBody]
          required :fetch, -> { HubspotSDK::Crm::Extensions::PublicCardFetchBody }

          # @!attribute title
          #
          #   @return [String]
          required :title, String

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time, api_name: :createdAt

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time, api_name: :updatedAt

          # @!method initialize(id:, actions:, audit_history:, display_:, fetch:, title:, created_at: nil, updated_at: nil)
          #   @param id [String]
          #
          #   @param actions [HubspotSDK::Models::Crm::Extensions::CardActions] Configuration for custom user actions on cards.
          #
          #   @param audit_history [Array<HubspotSDK::Models::Crm::Extensions::CardAuditResponse>]
          #
          #   @param display_ [HubspotSDK::Models::Crm::Extensions::CardDisplayBody] Configuration for displayed info on a card
          #
          #   @param fetch [HubspotSDK::Models::Crm::Extensions::PublicCardFetchBody]
          #
          #   @param title [String]
          #
          #   @param created_at [Time]
          #
          #   @param updated_at [Time]
        end
      end
    end
  end
end
