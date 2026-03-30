# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchPortalEntry < HubspotSDK::Internal::Type::BaseModel
        # @!attribute flag_state
        #   The flag state for this portal (e.g. ON or OFF)
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::BatchPortalEntry::FlagState]
        required :flag_state, enum: -> { HubspotSDK::Crm::BatchPortalEntry::FlagState }, api_name: :flagState

        # @!attribute portal_id
        #   The ID of the portal
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!method initialize(flag_state:, portal_id:)
        #   @param flag_state [Symbol, HubspotSDK::Models::Crm::BatchPortalEntry::FlagState] The flag state for this portal (e.g. ON or OFF)
        #
        #   @param portal_id [Integer] The ID of the portal

        # The flag state for this portal (e.g. ON or OFF)
        #
        # @see HubspotSDK::Models::Crm::BatchPortalEntry#flag_state
        module FlagState
          extend HubspotSDK::Internal::Type::Enum

          ABSENT = :ABSENT
          OFF = :OFF
          ON = :ON

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
