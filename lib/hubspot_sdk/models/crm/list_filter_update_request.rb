# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class ListFilterUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filter_branch
        #
        #   @return [HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch]
        required :filter_branch,
                 union: -> { HubspotSDK::CRM::ListFilterUpdateRequest::FilterBranch },
                 api_name: :filterBranch

        # @!method initialize(filter_branch:)
        #   The definition of the list filter branch update request.
        #
        #   @param filter_branch [HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch]

        # @see HubspotSDK::Models::CRM::ListFilterUpdateRequest#filter_branch
        module FilterBranch
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::PublicOrFilterBranch }

          variant -> { HubspotSDK::PublicAndFilterBranch }

          variant -> { HubspotSDK::PublicNotAllFilterBranch }

          variant -> { HubspotSDK::PublicNotAnyFilterBranch }

          variant -> { HubspotSDK::PublicRestrictedFilterBranch }

          variant -> { HubspotSDK::PublicUnifiedEventsFilterBranch }

          variant -> { HubspotSDK::PublicPropertyAssociationFilterBranch }

          variant -> { HubspotSDK::PublicAssociationFilterBranch }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch)]
        end
      end
    end
  end
end
