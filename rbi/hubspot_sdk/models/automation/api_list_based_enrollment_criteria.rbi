# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIListBasedEnrollmentCriteria < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIListBasedEnrollmentCriteria,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The list filter branch that represents the enrollment trigger to this flow.
        sig do
          returns(
            T.any(
              HubspotSDK::PublicOrFilterBranch,
              HubspotSDK::PublicAndFilterBranch,
              HubspotSDK::PublicNotAllFilterBranch,
              HubspotSDK::PublicNotAnyFilterBranch,
              HubspotSDK::PublicRestrictedFilterBranch,
              HubspotSDK::PublicUnifiedEventsFilterBranch,
              HubspotSDK::PublicPropertyAssociationFilterBranch,
              HubspotSDK::PublicAssociationFilterBranch
            )
          )
        end
        attr_accessor :list_filter_branch

        # A list of filter branches to listen for in order to re-enroll objects into this
        # workflow.
        sig do
          returns(
            T::Array[
              T.any(
                HubspotSDK::PublicOrFilterBranch,
                HubspotSDK::PublicAndFilterBranch,
                HubspotSDK::PublicNotAllFilterBranch,
                HubspotSDK::PublicNotAnyFilterBranch,
                HubspotSDK::PublicRestrictedFilterBranch,
                HubspotSDK::PublicUnifiedEventsFilterBranch,
                HubspotSDK::PublicPropertyAssociationFilterBranch,
                HubspotSDK::PublicAssociationFilterBranch
              )
            ]
          )
        end
        attr_accessor :re_enrollment_triggers_filter_branches

        # Whether or not the same object can enroll in this workflow twice.
        sig { returns(T::Boolean) }
        attr_accessor :should_re_enroll

        # The type of enrollment criteria this is, this can be "LIST_BASED",
        # "EVENT_BASED", or "MANUAL".
        sig do
          returns(
            HubspotSDK::Automation::APIListBasedEnrollmentCriteria::Type::OrSymbol
          )
        end
        attr_accessor :type

        # Whether or not to remove objects from this workflow if they stop meeting the
        # enrollment criteria.
        sig { returns(T::Boolean) }
        attr_accessor :un_enroll_objects_not_meeting_criteria

        sig do
          params(
            list_filter_branch:
              T.any(
                HubspotSDK::PublicOrFilterBranch::OrHash,
                HubspotSDK::PublicAndFilterBranch::OrHash,
                HubspotSDK::PublicNotAllFilterBranch::OrHash,
                HubspotSDK::PublicNotAnyFilterBranch::OrHash,
                HubspotSDK::PublicRestrictedFilterBranch::OrHash,
                HubspotSDK::PublicUnifiedEventsFilterBranch::OrHash,
                HubspotSDK::PublicPropertyAssociationFilterBranch::OrHash,
                HubspotSDK::PublicAssociationFilterBranch::OrHash
              ),
            re_enrollment_triggers_filter_branches:
              T::Array[
                T.any(
                  HubspotSDK::PublicOrFilterBranch::OrHash,
                  HubspotSDK::PublicAndFilterBranch::OrHash,
                  HubspotSDK::PublicNotAllFilterBranch::OrHash,
                  HubspotSDK::PublicNotAnyFilterBranch::OrHash,
                  HubspotSDK::PublicRestrictedFilterBranch::OrHash,
                  HubspotSDK::PublicUnifiedEventsFilterBranch::OrHash,
                  HubspotSDK::PublicPropertyAssociationFilterBranch::OrHash,
                  HubspotSDK::PublicAssociationFilterBranch::OrHash
                )
              ],
            should_re_enroll: T::Boolean,
            type:
              HubspotSDK::Automation::APIListBasedEnrollmentCriteria::Type::OrSymbol,
            un_enroll_objects_not_meeting_criteria: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The list filter branch that represents the enrollment trigger to this flow.
          list_filter_branch:,
          # A list of filter branches to listen for in order to re-enroll objects into this
          # workflow.
          re_enrollment_triggers_filter_branches:,
          # Whether or not the same object can enroll in this workflow twice.
          should_re_enroll:,
          # The type of enrollment criteria this is, this can be "LIST_BASED",
          # "EVENT_BASED", or "MANUAL".
          type:,
          # Whether or not to remove objects from this workflow if they stop meeting the
          # enrollment criteria.
          un_enroll_objects_not_meeting_criteria:
        )
        end

        sig do
          override.returns(
            {
              list_filter_branch:
                T.any(
                  HubspotSDK::PublicOrFilterBranch,
                  HubspotSDK::PublicAndFilterBranch,
                  HubspotSDK::PublicNotAllFilterBranch,
                  HubspotSDK::PublicNotAnyFilterBranch,
                  HubspotSDK::PublicRestrictedFilterBranch,
                  HubspotSDK::PublicUnifiedEventsFilterBranch,
                  HubspotSDK::PublicPropertyAssociationFilterBranch,
                  HubspotSDK::PublicAssociationFilterBranch
                ),
              re_enrollment_triggers_filter_branches:
                T::Array[
                  T.any(
                    HubspotSDK::PublicOrFilterBranch,
                    HubspotSDK::PublicAndFilterBranch,
                    HubspotSDK::PublicNotAllFilterBranch,
                    HubspotSDK::PublicNotAnyFilterBranch,
                    HubspotSDK::PublicRestrictedFilterBranch,
                    HubspotSDK::PublicUnifiedEventsFilterBranch,
                    HubspotSDK::PublicPropertyAssociationFilterBranch,
                    HubspotSDK::PublicAssociationFilterBranch
                  )
                ],
              should_re_enroll: T::Boolean,
              type:
                HubspotSDK::Automation::APIListBasedEnrollmentCriteria::Type::OrSymbol,
              un_enroll_objects_not_meeting_criteria: T::Boolean
            }
          )
        end
        def to_hash
        end

        # The list filter branch that represents the enrollment trigger to this flow.
        module ListFilterBranch
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::PublicOrFilterBranch,
                HubspotSDK::PublicAndFilterBranch,
                HubspotSDK::PublicNotAllFilterBranch,
                HubspotSDK::PublicNotAnyFilterBranch,
                HubspotSDK::PublicRestrictedFilterBranch,
                HubspotSDK::PublicUnifiedEventsFilterBranch,
                HubspotSDK::PublicPropertyAssociationFilterBranch,
                HubspotSDK::PublicAssociationFilterBranch
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIListBasedEnrollmentCriteria::ListFilterBranch::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module ReEnrollmentTriggersFilterBranch
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::PublicOrFilterBranch,
                HubspotSDK::PublicAndFilterBranch,
                HubspotSDK::PublicNotAllFilterBranch,
                HubspotSDK::PublicNotAnyFilterBranch,
                HubspotSDK::PublicRestrictedFilterBranch,
                HubspotSDK::PublicUnifiedEventsFilterBranch,
                HubspotSDK::PublicPropertyAssociationFilterBranch,
                HubspotSDK::PublicAssociationFilterBranch
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIListBasedEnrollmentCriteria::ReEnrollmentTriggersFilterBranch::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # The type of enrollment criteria this is, this can be "LIST_BASED",
        # "EVENT_BASED", or "MANUAL".
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIListBasedEnrollmentCriteria::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST_BASED =
            T.let(
              :LIST_BASED,
              HubspotSDK::Automation::APIListBasedEnrollmentCriteria::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIListBasedEnrollmentCriteria::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
