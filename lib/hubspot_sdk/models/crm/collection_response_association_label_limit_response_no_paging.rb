# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Limits#get_association_label_limits
      class CollectionResponseAssociationLabelLimitResponseNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::CRM::AssociationLabelLimitResponse>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::AssociationLabelLimitResponse] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::CRM::AssociationLabelLimitResponse>]
      end
    end
  end
end
