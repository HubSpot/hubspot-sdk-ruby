# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIListBasedEnrollmentCriteria < HubspotSDK::Internal::Type::BaseModel
        # @!attribute list_filter_branch
        #   The list filter branch that represents the enrollment trigger to this flow.
        #
        #   @return [HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch]
        required :list_filter_branch,
                 union: -> { HubspotSDK::Automation::APIListBasedEnrollmentCriteria::ListFilterBranch },
                 api_name: :listFilterBranch

        # @!attribute re_enrollment_triggers_filter_branches
        #   A list of filter branches to listen for in order to re-enroll objects into this
        #   workflow.
        #
        #   @return [Array<HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch>]
        required :re_enrollment_triggers_filter_branches,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Automation::APIListBasedEnrollmentCriteria::ReEnrollmentTriggersFilterBranch]
                 },
                 api_name: :reEnrollmentTriggersFilterBranches

        # @!attribute should_re_enroll
        #   Whether or not the same object can enroll in this workflow twice.
        #
        #   @return [Boolean]
        required :should_re_enroll, HubspotSDK::Internal::Type::Boolean, api_name: :shouldReEnroll

        # @!attribute type
        #   The type of enrollment criteria this is, this can be "LIST_BASED",
        #   "EVENT_BASED", or "MANUAL".
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIListBasedEnrollmentCriteria::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIListBasedEnrollmentCriteria::Type }

        # @!attribute un_enroll_objects_not_meeting_criteria
        #   Whether or not to remove objects from this workflow if they stop meeting the
        #   enrollment criteria.
        #
        #   @return [Boolean]
        required :un_enroll_objects_not_meeting_criteria,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :unEnrollObjectsNotMeetingCriteria

        # @!method initialize(list_filter_branch:, re_enrollment_triggers_filter_branches:, should_re_enroll:, type:, un_enroll_objects_not_meeting_criteria:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIListBasedEnrollmentCriteria} for more
        #   details.
        #
        #   @param list_filter_branch [HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch] The list filter branch that represents the enrollment trigger to this flow.
        #
        #   @param re_enrollment_triggers_filter_branches [Array<HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch>] A list of filter branches to listen for in order to re-enroll objects into this
        #
        #   @param should_re_enroll [Boolean] Whether or not the same object can enroll in this workflow twice.
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIListBasedEnrollmentCriteria::Type] The type of enrollment criteria this is, this can be "LIST_BASED", "EVENT_BASED"
        #
        #   @param un_enroll_objects_not_meeting_criteria [Boolean] Whether or not to remove objects from this workflow if they stop meeting the enr

        # The list filter branch that represents the enrollment trigger to this flow.
        #
        # @see HubspotSDK::Models::Automation::APIListBasedEnrollmentCriteria#list_filter_branch
        module ListFilterBranch
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

        module ReEnrollmentTriggersFilterBranch
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
        # @see HubspotSDK::Models::Automation::APIListBasedEnrollmentCriteria#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          LIST_BASED = :LIST_BASED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
