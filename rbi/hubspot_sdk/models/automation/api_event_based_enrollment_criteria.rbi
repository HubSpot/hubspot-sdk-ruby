# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIEventBasedEnrollmentCriteria < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIEventBasedEnrollmentCriteria,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::PublicUnifiedEventsFilterBranch]) }
        attr_accessor :event_filter_branches

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
        attr_accessor :list_membership_filter_branches

        sig { returns(T::Boolean) }
        attr_accessor :should_re_enroll

        sig do
          returns(
            HubspotSDK::Automation::APIEventBasedEnrollmentCriteria::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          returns(
            T.nilable(
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
          )
        end
        attr_reader :refinement_criteria

        sig do
          params(
            refinement_criteria:
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
          ).void
        end
        attr_writer :refinement_criteria

        sig do
          params(
            event_filter_branches:
              T::Array[HubspotSDK::PublicUnifiedEventsFilterBranch::OrHash],
            list_membership_filter_branches:
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
              HubspotSDK::Automation::APIEventBasedEnrollmentCriteria::Type::OrSymbol,
            refinement_criteria:
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
          ).returns(T.attached_class)
        end
        def self.new(
          event_filter_branches:,
          list_membership_filter_branches:,
          should_re_enroll:,
          type:,
          refinement_criteria: nil
        )
        end

        sig do
          override.returns(
            {
              event_filter_branches:
                T::Array[HubspotSDK::PublicUnifiedEventsFilterBranch],
              list_membership_filter_branches:
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
                HubspotSDK::Automation::APIEventBasedEnrollmentCriteria::Type::OrSymbol,
              refinement_criteria:
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
            }
          )
        end
        def to_hash
        end

        module ListMembershipFilterBranch
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
                HubspotSDK::Automation::APIEventBasedEnrollmentCriteria::ListMembershipFilterBranch::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIEventBasedEnrollmentCriteria::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT_BASED =
            T.let(
              :EVENT_BASED,
              HubspotSDK::Automation::APIEventBasedEnrollmentCriteria::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIEventBasedEnrollmentCriteria::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module RefinementCriteria
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
                HubspotSDK::Automation::APIEventBasedEnrollmentCriteria::RefinementCriteria::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
