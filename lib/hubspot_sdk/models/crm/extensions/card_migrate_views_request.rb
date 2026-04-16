# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CardMigrateViewsRequest < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute allow_duplicate_app_card_ids
          #
          #   @return [Boolean]
          required :allow_duplicate_app_card_ids,
                   HubSpotSDK::Internal::Type::Boolean,
                   api_name: :allowDuplicateAppCardIds

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

          # @!method initialize(allow_duplicate_app_card_ids:, app_card_id:, legacy_crm_card_id:, helpdesk_app_card_id: nil)
          #   @param allow_duplicate_app_card_ids [Boolean]
          #   @param app_card_id [Integer]
          #   @param legacy_crm_card_id [Integer]
          #   @param helpdesk_app_card_id [Integer]
        end
      end
    end
  end
end
