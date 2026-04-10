# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PortalFlagStatePutRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute flag_state
        #   The state that the given flag should be in for this portal
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PortalFlagStatePutRequest::FlagState]
        required :flag_state,
                 enum: -> { HubSpotSDK::Crm::PortalFlagStatePutRequest::FlagState },
                 api_name: :flagState

        # @!method initialize(flag_state:)
        #   @param flag_state [Symbol, HubSpotSDK::Models::Crm::PortalFlagStatePutRequest::FlagState] The state that the given flag should be in for this portal

        # The state that the given flag should be in for this portal
        #
        # @see HubSpotSDK::Models::Crm::PortalFlagStatePutRequest#flag_state
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
