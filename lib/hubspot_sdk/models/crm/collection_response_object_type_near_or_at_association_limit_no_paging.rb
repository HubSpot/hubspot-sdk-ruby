# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Limits#get_association_records_limits_from_objects
      class CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::ObjectTypeNearOrAtAssociationLimit>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::ObjectTypeNearOrAtAssociationLimit] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Crm::ObjectTypeNearOrAtAssociationLimit>]
      end
    end
  end
end
