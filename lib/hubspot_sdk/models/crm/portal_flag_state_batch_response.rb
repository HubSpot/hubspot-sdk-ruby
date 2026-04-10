# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::FeatureFlags#list_portals
      class PortalFlagStateBatchResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute portal_flag_states
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PortalFlagStateResponse>]
        required :portal_flag_states,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PortalFlagStateResponse] },
                 api_name: :portalFlagStates

        # @!method initialize(portal_flag_states:)
        #   @param portal_flag_states [Array<HubSpotSDK::Models::Crm::PortalFlagStateResponse>]
      end
    end
  end
end
