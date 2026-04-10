# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Limits#get_association_records_limits_from_objects
      class CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::ObjectTypeNearOrAtAssociationLimit>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::ObjectTypeNearOrAtAssociationLimit] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Crm::ObjectTypeNearOrAtAssociationLimit>]
      end
    end
  end
end
