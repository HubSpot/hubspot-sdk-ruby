# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardMigrateViewsRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute app_card_id
          #
          #   @return [Integer]
          required :app_card_id, Integer, api_name: :appCardId

          # @!attribute legacy_crm_card_id
          #
          #   @return [Integer]
          required :legacy_crm_card_id, Integer, api_name: :legacyCrmCardId

          # @!attribute helpdesk_app_card_id
          #
          #   @return [Integer, nil]
          optional :helpdesk_app_card_id, Integer, api_name: :helpdeskAppCardId

          # @!method initialize(app_card_id:, legacy_crm_card_id:, helpdesk_app_card_id: nil)
          #   @param app_card_id [Integer]
          #   @param legacy_crm_card_id [Integer]
          #   @param helpdesk_app_card_id [Integer]
        end
      end
    end
  end
end
