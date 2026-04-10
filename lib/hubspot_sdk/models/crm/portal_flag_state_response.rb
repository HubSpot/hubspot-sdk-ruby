# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::FeatureFlags#delete_portal_state
      class PortalFlagStateResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute app_id
        #   The ID of the app
        #
        #   @return [Integer]
        required :app_id, Integer, api_name: :appId

        # @!attribute flag_name
        #   The name of the flag
        #
        #   @return [String]
        required :flag_name, String, api_name: :flagName

        # @!attribute flag_state
        #   The state of the flag for this portal
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PortalFlagStateResponse::FlagState]
        required :flag_state,
                 enum: -> { HubSpotSDK::Crm::PortalFlagStateResponse::FlagState },
                 api_name: :flagState

        # @!attribute portal_id
        #   The ID of the portal
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!method initialize(app_id:, flag_name:, flag_state:, portal_id:)
        #   @param app_id [Integer] The ID of the app
        #
        #   @param flag_name [String] The name of the flag
        #
        #   @param flag_state [Symbol, HubSpotSDK::Models::Crm::PortalFlagStateResponse::FlagState] The state of the flag for this portal
        #
        #   @param portal_id [Integer] The ID of the portal

        # The state of the flag for this portal
        #
        # @see HubSpotSDK::Models::Crm::PortalFlagStateResponse#flag_state
        module FlagState
          extend HubSpotSDK::Internal::Type::Enum

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
