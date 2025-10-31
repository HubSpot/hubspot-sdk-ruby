# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class PortalFlagStatePutRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute flag_state
        #
        #   @return [Symbol, HubspotSDK::Models::CRM::PortalFlagStatePutRequest::FlagState]
        required :flag_state,
                 enum: -> { HubspotSDK::CRM::PortalFlagStatePutRequest::FlagState },
                 api_name: :flagState

        # @!method initialize(flag_state:)
        #   @param flag_state [Symbol, HubspotSDK::Models::CRM::PortalFlagStatePutRequest::FlagState]

        # @see HubspotSDK::Models::CRM::PortalFlagStatePutRequest#flag_state
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
