# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PortalFlagStatePutRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute flag_state
        #   The state that the given flag should be in for this portal
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PortalFlagStatePutRequest::FlagState]
        required :flag_state,
                 enum: -> { HubspotSDK::Crm::PortalFlagStatePutRequest::FlagState },
                 api_name: :flagState

        # @!method initialize(flag_state:)
        #   @param flag_state [Symbol, HubspotSDK::Models::Crm::PortalFlagStatePutRequest::FlagState] The state that the given flag should be in for this portal

        # The state that the given flag should be in for this portal
        #
        # @see HubspotSDK::Models::Crm::PortalFlagStatePutRequest#flag_state
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
