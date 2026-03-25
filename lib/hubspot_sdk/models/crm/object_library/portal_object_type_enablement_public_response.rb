# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module ObjectLibrary
        # @see HubspotSDK::Resources::Crm::ObjectLibrary::Enablement#get_all
        class PortalObjectTypeEnablementPublicResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute enablement_by_object_type_id
          #   A map of objectTypeId to whether that object type is enabled or not
          #
          #   @return [Hash{Symbol=>Boolean}]
          required :enablement_by_object_type_id,
                   HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Boolean],
                   api_name: :enablementByObjectTypeId

          # @!method initialize(enablement_by_object_type_id:)
          #   @param enablement_by_object_type_id [Hash{Symbol=>Boolean}] A map of objectTypeId to whether that object type is enabled or not
        end
      end
    end
  end
end
