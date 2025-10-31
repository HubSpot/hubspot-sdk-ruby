# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIListBranch < HubspotSDK::Internal::Type::BaseModel
        # @!attribute branch_name
        #   The name of this branch
        #
        #   @return [String, nil]
        optional :branch_name, String, api_name: :branchName

        # @!attribute connection
        #
        #   @return [HubspotSDK::Models::Automation::APIConnection, nil]
        optional :connection, -> { HubspotSDK::Automation::APIConnection }

        # @!attribute filter_branch
        #   The list criteria that determine when to execute this branch. The first matching
        #   branch will execute.
        #
        #   @return [HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch, nil]
        optional :filter_branch,
                 union: -> { HubspotSDK::Automation::APIListBranch::FilterBranch },
                 api_name: :filterBranch

        # @!method initialize(branch_name: nil, connection: nil, filter_branch: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIListBranch} for more details.
        #
        #   @param branch_name [String] The name of this branch
        #
        #   @param connection [HubspotSDK::Models::Automation::APIConnection]
        #
        #   @param filter_branch [HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch] The list criteria that determine when to execute this branch. The first matching

        # The list criteria that determine when to execute this branch. The first matching
        # branch will execute.
        #
        # @see HubspotSDK::Models::Automation::APIListBranch#filter_branch
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
