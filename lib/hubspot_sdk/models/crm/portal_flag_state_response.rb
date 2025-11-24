# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PortalFlagStateResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer, api_name: :appId

        # @!attribute flag_name
        #
        #   @return [String]
        required :flag_name, String, api_name: :flagName

        # @!attribute flag_state
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PortalFlagStateResponse::FlagState]
        required :flag_state,
                 enum: -> { HubspotSDK::Crm::PortalFlagStateResponse::FlagState },
                 api_name: :flagState

        # @!attribute portal_id
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!method initialize(app_id:, flag_name:, flag_state:, portal_id:)
        #   @param app_id [Integer]
        #   @param flag_name [String]
        #   @param flag_state [Symbol, HubspotSDK::Models::Crm::PortalFlagStateResponse::FlagState]
        #   @param portal_id [Integer]

        # @see HubspotSDK::Models::Crm::PortalFlagStateResponse#flag_state
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
