# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        # @see HubspotSDK::Resources::CRM::Extensions::Cards#create
        class PublicCardResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute actions
          #   Configuration for custom user actions on cards.
          #
          #   @return [HubspotSDK::Models::CRM::Extensions::CardActions]
          required :actions, -> { HubspotSDK::CRM::Extensions::CardActions }

          # @!attribute audit_history
          #
          #   @return [Array<HubspotSDK::Models::CRM::Extensions::CardAuditResponse>]
          required :audit_history,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Extensions::CardAuditResponse] },
                   api_name: :auditHistory

          # @!attribute display_
          #   Configuration for displayed info on a card
          #
          #   @return [HubspotSDK::Models::CRM::Extensions::CardDisplayBody]
          required :display_, -> { HubspotSDK::CRM::Extensions::CardDisplayBody }, api_name: :display

          # @!attribute fetch
          #
          #   @return [HubspotSDK::Models::CRM::Extensions::PublicCardFetchBody]
          required :fetch, -> { HubspotSDK::CRM::Extensions::PublicCardFetchBody }

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
          #   @param actions [HubspotSDK::Models::CRM::Extensions::CardActions] Configuration for custom user actions on cards.
          #
          #   @param audit_history [Array<HubspotSDK::Models::CRM::Extensions::CardAuditResponse>]
          #
          #   @param display_ [HubspotSDK::Models::CRM::Extensions::CardDisplayBody] Configuration for displayed info on a card
          #
          #   @param fetch [HubspotSDK::Models::CRM::Extensions::PublicCardFetchBody]
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
