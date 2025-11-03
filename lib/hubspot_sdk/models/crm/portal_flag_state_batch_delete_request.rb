# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PortalFlagStateBatchDeleteRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute portal_ids
        #
        #   @return [Array<Integer>]
        required :portal_ids, HubspotSDK::Internal::Type::ArrayOf[Integer], api_name: :portalIds

        # @!method initialize(portal_ids:)
        #   @param portal_ids [Array<Integer>]
      end
    end
  end
end
