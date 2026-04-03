# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class ListFilterUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filter_branch
        #   Updated filtering criteria for the list
        #
        #   @return [HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch]
        required :filter_branch,
                 union: -> { HubspotSDK::Crm::ListFilterUpdateRequest::FilterBranch },
                 api_name: :filterBranch

        # @!method initialize(filter_branch:)
        #   @param filter_branch [HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch] Updated filtering criteria for the list

        # Updated filtering criteria for the list
        #
        # @see HubspotSDK::Models::Crm::ListFilterUpdateRequest#filter_branch
        module FilterBranch
          extend HubspotSDK::Internal::Type::Union

          discriminator :filterBranchType

          variant :OR, -> { HubspotSDK::Crm::PublicOrFilterBranch }

          variant :AND, -> { HubspotSDK::Crm::PublicAndFilterBranch }

          variant :NOT_ALL, -> { HubspotSDK::Crm::PublicNotAllFilterBranch }

          variant :NOT_ANY, -> { HubspotSDK::Crm::PublicNotAnyFilterBranch }

          variant :RESTRICTED, -> { HubspotSDK::Crm::PublicRestrictedFilterBranch }

          variant :UNIFIED_EVENTS, -> { HubspotSDK::Crm::PublicUnifiedEventsFilterBranch }

          variant :PROPERTY_ASSOCIATION, -> { HubspotSDK::Crm::PublicPropertyAssociationFilterBranch }

          variant :ASSOCIATION, -> { HubspotSDK::Crm::PublicAssociationFilterBranch }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch)]
        end
      end
    end
  end
end
