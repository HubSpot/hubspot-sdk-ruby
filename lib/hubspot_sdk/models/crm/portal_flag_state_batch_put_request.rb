# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PortalFlagStateBatchPutRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute portal_states
        #
        #   @return [Array<HubSpotSDK::Models::Crm::BatchPortalEntry>]
        required :portal_states,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::BatchPortalEntry] },
                 api_name: :portalStates

        # @!method initialize(portal_states:)
        #   @param portal_states [Array<HubSpotSDK::Models::Crm::BatchPortalEntry>]
      end
    end
  end
end
