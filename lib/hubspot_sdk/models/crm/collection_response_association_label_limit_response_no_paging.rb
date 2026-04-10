# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Limits#get_association_label_limits
      class CollectionResponseAssociationLabelLimitResponseNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::AssociationLabelLimitResponse>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::AssociationLabelLimitResponse] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Crm::AssociationLabelLimitResponse>]
      end
    end
  end
end
