# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIEventBasedEnrollmentCriteria < HubspotSDK::Internal::Type::BaseModel
        # @!attribute event_filter_branches
        #
        #   @return [Array<HubspotSDK::Models::PublicUnifiedEventsFilterBranch>]
        required :event_filter_branches,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::PublicUnifiedEventsFilterBranch] },
                 api_name: :eventFilterBranches

        # @!attribute list_membership_filter_branches
        #   If you want to listen to list-membership events (an object was added to a list,
        #   an object was removed from a list) you need to use this
        #   `listMembershipFilterBranches` property instead of `eventFilterBranches`,
        #   because list membership events work differently.
        #
        #   @return [Array<HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch>]
        required :list_membership_filter_branches,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Automation::APIEventBasedEnrollmentCriteria::ListMembershipFilterBranch]
                 },
                 api_name: :listMembershipFilterBranches

        # @!attribute should_re_enroll
        #   Whether or not the same object can enroll in this workflow twice.
        #
        #   @return [Boolean]
        required :should_re_enroll, HubspotSDK::Internal::Type::Boolean, api_name: :shouldReEnroll

        # @!attribute type
        #   The type of enrollment criteria this is, this can be "LIST_BASED",
        #   "EVENT_BASED", or "MANUAL".
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIEventBasedEnrollmentCriteria::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIEventBasedEnrollmentCriteria::Type }

        # @!attribute refinement_criteria
        #   List-based criteria to further refine which contacts will enroll in this flow.
        #
        #   @return [HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch, nil]
        optional :refinement_criteria,
                 union: -> { HubspotSDK::Automation::APIEventBasedEnrollmentCriteria::RefinementCriteria },
                 api_name: :refinementCriteria

        # @!method initialize(event_filter_branches:, list_membership_filter_branches:, should_re_enroll:, type:, refinement_criteria: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIEventBasedEnrollmentCriteria} for more
        #   details.
        #
        #   @param event_filter_branches [Array<HubspotSDK::Models::PublicUnifiedEventsFilterBranch>]
        #
        #   @param list_membership_filter_branches [Array<HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch>] If you want to listen to list-membership events (an object was added to a list,
        #
        #   @param should_re_enroll [Boolean] Whether or not the same object can enroll in this workflow twice.
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIEventBasedEnrollmentCriteria::Type] The type of enrollment criteria this is, this can be "LIST_BASED", "EVENT_BASED"
        #
        #   @param refinement_criteria [HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch] List-based criteria to further refine which contacts will enroll in this flow.

        module ListMembershipFilterBranch
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

        # The type of enrollment criteria this is, this can be "LIST_BASED",
        # "EVENT_BASED", or "MANUAL".
        #
        # @see HubspotSDK::Models::Automation::APIEventBasedEnrollmentCriteria#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          EVENT_BASED = :EVENT_BASED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # List-based criteria to further refine which contacts will enroll in this flow.
        #
        # @see HubspotSDK::Models::Automation::APIEventBasedEnrollmentCriteria#refinement_criteria
        module RefinementCriteria
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
