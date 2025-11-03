# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchPortalEntry < HubspotSDK::Internal::Type::BaseModel
        # @!attribute flag_state
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::BatchPortalEntry::FlagState]
        required :flag_state, enum: -> { HubspotSDK::Crm::BatchPortalEntry::FlagState }, api_name: :flagState

        # @!attribute portal_id
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!method initialize(flag_state:, portal_id:)
        #   @param flag_state [Symbol, HubspotSDK::Models::Crm::BatchPortalEntry::FlagState]
        #   @param portal_id [Integer]

        # @see HubspotSDK::Models::Crm::BatchPortalEntry#flag_state
        module FlagState
          extend HubspotSDK::Internal::Type::Enum

          OFF = :OFF
          ON = :ON
          ABSENT = :ABSENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
