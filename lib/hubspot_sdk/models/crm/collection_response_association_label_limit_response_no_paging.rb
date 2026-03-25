# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Limits#get_association_label_limits
      class CollectionResponseAssociationLabelLimitResponseNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::AssociationLabelLimitResponse>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::AssociationLabelLimitResponse] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Crm::AssociationLabelLimitResponse>]
      end
    end
  end
end
