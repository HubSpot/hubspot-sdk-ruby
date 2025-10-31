# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class PortalFlagStateBatchPutRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute portal_states
        #
        #   @return [Array<HubspotSDK::Models::CRM::BatchPortalEntry>]
        required :portal_states,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::BatchPortalEntry] },
                 api_name: :portalStates

        # @!method initialize(portal_states:)
        #   @param portal_states [Array<HubspotSDK::Models::CRM::BatchPortalEntry>]
      end
    end
  end
end
