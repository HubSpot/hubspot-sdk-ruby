# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PortalObjectTypeEnablementPublicResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute enablement_by_object_type_id
        #
        #   @return [Hash{Symbol=>Boolean}]
        required :enablement_by_object_type_id,
                 HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Boolean],
                 api_name: :enablementByObjectTypeId

        # @!method initialize(enablement_by_object_type_id:)
        #   @param enablement_by_object_type_id [Hash{Symbol=>Boolean}]
      end
    end
  end
end
