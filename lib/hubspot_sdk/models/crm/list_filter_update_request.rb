# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class ListFilterUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_branch
        #   Updated filtering criteria for the list
        #
        #   @return [HubSpotSDK::Models::Crm::PublicOrFilterBranch, HubSpotSDK::Models::Crm::PublicAndFilterBranch, HubSpotSDK::Models::Crm::PublicNotAllFilterBranch, HubSpotSDK::Models::Crm::PublicNotAnyFilterBranch, HubSpotSDK::Models::Crm::PublicRestrictedFilterBranch, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubSpotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubSpotSDK::Models::Crm::PublicAssociationFilterBranch]
        required :filter_branch,
                 union: -> { HubSpotSDK::Crm::ListFilterUpdateRequest::FilterBranch },
                 api_name: :filterBranch

        # @!method initialize(filter_branch:)
        #   @param filter_branch [HubSpotSDK::Models::Crm::PublicOrFilterBranch, HubSpotSDK::Models::Crm::PublicAndFilterBranch, HubSpotSDK::Models::Crm::PublicNotAllFilterBranch, HubSpotSDK::Models::Crm::PublicNotAnyFilterBranch, HubSpotSDK::Models::Crm::PublicRestrictedFilterBranch, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubSpotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubSpotSDK::Models::Crm::PublicAssociationFilterBranch] Updated filtering criteria for the list

        # Updated filtering criteria for the list
        #
        # @see HubSpotSDK::Models::Crm::ListFilterUpdateRequest#filter_branch
        module FilterBranch
          extend HubSpotSDK::Internal::Type::Union

          discriminator :filterBranchType

          variant :OR, -> { HubSpotSDK::Crm::PublicOrFilterBranch }

          variant :AND, -> { HubSpotSDK::Crm::PublicAndFilterBranch }

          variant :NOT_ALL, -> { HubSpotSDK::Crm::PublicNotAllFilterBranch }

          variant :NOT_ANY, -> { HubSpotSDK::Crm::PublicNotAnyFilterBranch }

          variant :RESTRICTED, -> { HubSpotSDK::Crm::PublicRestrictedFilterBranch }

          variant :UNIFIED_EVENTS, -> { HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch }

          variant :PROPERTY_ASSOCIATION, -> { HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch }

          variant :ASSOCIATION, -> { HubSpotSDK::Crm::PublicAssociationFilterBranch }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicOrFilterBranch, HubSpotSDK::Models::Crm::PublicAndFilterBranch, HubSpotSDK::Models::Crm::PublicNotAllFilterBranch, HubSpotSDK::Models::Crm::PublicNotAnyFilterBranch, HubSpotSDK::Models::Crm::PublicRestrictedFilterBranch, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubSpotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubSpotSDK::Models::Crm::PublicAssociationFilterBranch)]
        end
      end
    end
  end
end
