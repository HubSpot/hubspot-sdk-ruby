# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PortalFlagStateBatchPutRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute portal_states
        #
        #   @return [Array<HubspotSDK::Models::Crm::BatchPortalEntry>]
        required :portal_states,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::BatchPortalEntry] },
                 api_name: :portalStates

        # @!method initialize(portal_states:)
        #   @param portal_states [Array<HubspotSDK::Models::Crm::BatchPortalEntry>]
      end
    end
  end
end
