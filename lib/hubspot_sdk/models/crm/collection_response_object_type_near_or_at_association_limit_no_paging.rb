# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Limits#get_association_records_limits_from_objects
      class CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::CRM::ObjectTypeNearOrAtAssociationLimit>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::ObjectTypeNearOrAtAssociationLimit] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::CRM::ObjectTypeNearOrAtAssociationLimit>]
      end
    end
  end
end
