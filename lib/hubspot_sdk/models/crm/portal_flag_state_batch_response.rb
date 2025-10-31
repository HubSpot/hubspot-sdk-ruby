# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class PortalFlagStateBatchResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute portal_flag_states
        #
        #   @return [Array<HubspotSDK::Models::CRM::PortalFlagStateResponse>]
        required :portal_flag_states,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PortalFlagStateResponse] },
                 api_name: :portalFlagStates

        # @!method initialize(portal_flag_states:)
        #   @param portal_flag_states [Array<HubspotSDK::Models::CRM::PortalFlagStateResponse>]
      end
    end
  end
end
