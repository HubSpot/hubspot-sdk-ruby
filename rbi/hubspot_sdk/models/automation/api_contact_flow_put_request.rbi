# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIContactFlowPutRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIContactFlowPutRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              T.any(
                HubspotSDK::Automation::APIStaticBranchAction,
                HubspotSDK::Automation::APIListBranchAction,
                HubspotSDK::Automation::APIAbTestBranchAction,
                HubspotSDK::Automation::APICustomCodeAction,
                HubspotSDK::Automation::APIWebhookAction,
                HubspotSDK::Automation::APISingleConnectionAction
              )
            ]
          )
        end
        attr_accessor :actions

        sig { returns(T::Array[HubspotSDK::Automation::APIBlockedDate]) }
        attr_accessor :blocked_dates

        sig { returns(T::Boolean) }
        attr_accessor :can_enroll_from_salesforce

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :custom_properties

        sig { returns(T::Boolean) }
        attr_accessor :is_enabled

        sig { returns(String) }
        attr_accessor :revision_id

        sig { returns(T::Array[Integer]) }
        attr_accessor :suppression_list_ids

        sig { returns(T::Array[HubspotSDK::Automation::APITimeWindow]) }
        attr_accessor :time_windows

        sig do
          returns(
            HubspotSDK::Automation::APIContactFlowPutRequest::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig do
          returns(
            T.nilable(
              T.any(
                HubspotSDK::Automation::APIListBasedEnrollmentCriteria,
                HubspotSDK::Automation::APIEventBasedEnrollmentCriteria,
                HubspotSDK::Automation::APIManualEnrollmentCriteria
              )
            )
          )
        end
        attr_reader :enrollment_criteria

        sig do
          params(
            enrollment_criteria:
              T.any(
                HubspotSDK::Automation::APIListBasedEnrollmentCriteria::OrHash,
                HubspotSDK::Automation::APIEventBasedEnrollmentCriteria::OrHash,
                HubspotSDK::Automation::APIManualEnrollmentCriteria::OrHash
              )
          ).void
        end
        attr_writer :enrollment_criteria

        sig do
          returns(
            T.nilable(
              T.any(
                HubspotSDK::Automation::APIDailyEnrollmentSchedule,
                HubspotSDK::Automation::APIWeeklyEnrollmentSchedule,
                HubspotSDK::Automation::APIMonthlySpecificDaysEnrollmentSchedule,
                HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule,
                HubspotSDK::Automation::APIYearlyEnrollmentSchedule,
                HubspotSDK::Automation::APIPropertyBasedEnrollmentSchedule
              )
            )
          )
        end
        attr_reader :enrollment_schedule

        sig do
          params(
            enrollment_schedule:
              T.any(
                HubspotSDK::Automation::APIDailyEnrollmentSchedule::OrHash,
                HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::OrHash,
                HubspotSDK::Automation::APIMonthlySpecificDaysEnrollmentSchedule::OrHash,
                HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::OrHash,
                HubspotSDK::Automation::APIYearlyEnrollmentSchedule::OrHash,
                HubspotSDK::Automation::APIPropertyBasedEnrollmentSchedule::OrHash
              )
          ).void
        end
        attr_writer :enrollment_schedule

        sig do
          returns(
            T.nilable(
              T.any(
                HubspotSDK::Automation::APIContactPropertyAnchor,
                HubspotSDK::Automation::APIStaticDateAnchor
              )
            )
          )
        end
        attr_reader :event_anchor

        sig do
          params(
            event_anchor:
              T.any(
                HubspotSDK::Automation::APIContactPropertyAnchor::OrHash,
                HubspotSDK::Automation::APIStaticDateAnchor::OrHash
              )
          ).void
        end
        attr_writer :event_anchor

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
        attr_reader :goal_filter_branch

        sig do
          params(
            goal_filter_branch:
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
        attr_writer :goal_filter_branch

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :start_action_id

        sig { params(start_action_id: String).void }
        attr_writer :start_action_id

        sig do
          returns(T.nilable(HubspotSDK::Automation::APIUnEnrollmentSetting))
        end
        attr_reader :un_enrollment_setting

        sig do
          params(
            un_enrollment_setting:
              HubspotSDK::Automation::APIUnEnrollmentSetting::OrHash
          ).void
        end
        attr_writer :un_enrollment_setting

        sig { returns(T.nilable(String)) }
        attr_reader :uuid

        sig { params(uuid: String).void }
        attr_writer :uuid

        sig do
          params(
            actions:
              T::Array[
                T.any(
                  HubspotSDK::Automation::APIStaticBranchAction::OrHash,
                  HubspotSDK::Automation::APIListBranchAction::OrHash,
                  HubspotSDK::Automation::APIAbTestBranchAction::OrHash,
                  HubspotSDK::Automation::APICustomCodeAction::OrHash,
                  HubspotSDK::Automation::APIWebhookAction::OrHash,
                  HubspotSDK::Automation::APISingleConnectionAction::OrHash
                )
              ],
            blocked_dates:
              T::Array[HubspotSDK::Automation::APIBlockedDate::OrHash],
            can_enroll_from_salesforce: T::Boolean,
            custom_properties: T::Hash[Symbol, String],
            is_enabled: T::Boolean,
            revision_id: String,
            suppression_list_ids: T::Array[Integer],
            time_windows:
              T::Array[HubspotSDK::Automation::APITimeWindow::OrHash],
            type:
              HubspotSDK::Automation::APIContactFlowPutRequest::Type::OrSymbol,
            description: String,
            enrollment_criteria:
              T.any(
                HubspotSDK::Automation::APIListBasedEnrollmentCriteria::OrHash,
                HubspotSDK::Automation::APIEventBasedEnrollmentCriteria::OrHash,
                HubspotSDK::Automation::APIManualEnrollmentCriteria::OrHash
              ),
            enrollment_schedule:
              T.any(
                HubspotSDK::Automation::APIDailyEnrollmentSchedule::OrHash,
                HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::OrHash,
                HubspotSDK::Automation::APIMonthlySpecificDaysEnrollmentSchedule::OrHash,
                HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::OrHash,
                HubspotSDK::Automation::APIYearlyEnrollmentSchedule::OrHash,
                HubspotSDK::Automation::APIPropertyBasedEnrollmentSchedule::OrHash
              ),
            event_anchor:
              T.any(
                HubspotSDK::Automation::APIContactPropertyAnchor::OrHash,
                HubspotSDK::Automation::APIStaticDateAnchor::OrHash
              ),
            goal_filter_branch:
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
            name: String,
            start_action_id: String,
            un_enrollment_setting:
              HubspotSDK::Automation::APIUnEnrollmentSetting::OrHash,
            uuid: String
          ).returns(T.attached_class)
        end
        def self.new(
          actions:,
          blocked_dates:,
          can_enroll_from_salesforce:,
          custom_properties:,
          is_enabled:,
          revision_id:,
          suppression_list_ids:,
          time_windows:,
          type:,
          description: nil,
          enrollment_criteria: nil,
          enrollment_schedule: nil,
          event_anchor: nil,
          goal_filter_branch: nil,
          name: nil,
          start_action_id: nil,
          un_enrollment_setting: nil,
          uuid: nil
        )
        end

        sig do
          override.returns(
            {
              actions:
                T::Array[
                  T.any(
                    HubspotSDK::Automation::APIStaticBranchAction,
                    HubspotSDK::Automation::APIListBranchAction,
                    HubspotSDK::Automation::APIAbTestBranchAction,
                    HubspotSDK::Automation::APICustomCodeAction,
                    HubspotSDK::Automation::APIWebhookAction,
                    HubspotSDK::Automation::APISingleConnectionAction
                  )
                ],
              blocked_dates: T::Array[HubspotSDK::Automation::APIBlockedDate],
              can_enroll_from_salesforce: T::Boolean,
              custom_properties: T::Hash[Symbol, String],
              is_enabled: T::Boolean,
              revision_id: String,
              suppression_list_ids: T::Array[Integer],
              time_windows: T::Array[HubspotSDK::Automation::APITimeWindow],
              type:
                HubspotSDK::Automation::APIContactFlowPutRequest::Type::OrSymbol,
              description: String,
              enrollment_criteria:
                T.any(
                  HubspotSDK::Automation::APIListBasedEnrollmentCriteria,
                  HubspotSDK::Automation::APIEventBasedEnrollmentCriteria,
                  HubspotSDK::Automation::APIManualEnrollmentCriteria
                ),
              enrollment_schedule:
                T.any(
                  HubspotSDK::Automation::APIDailyEnrollmentSchedule,
                  HubspotSDK::Automation::APIWeeklyEnrollmentSchedule,
                  HubspotSDK::Automation::APIMonthlySpecificDaysEnrollmentSchedule,
                  HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule,
                  HubspotSDK::Automation::APIYearlyEnrollmentSchedule,
                  HubspotSDK::Automation::APIPropertyBasedEnrollmentSchedule
                ),
              event_anchor:
                T.any(
                  HubspotSDK::Automation::APIContactPropertyAnchor,
                  HubspotSDK::Automation::APIStaticDateAnchor
                ),
              goal_filter_branch:
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
              name: String,
              start_action_id: String,
              un_enrollment_setting:
                HubspotSDK::Automation::APIUnEnrollmentSetting,
              uuid: String
            }
          )
        end
        def to_hash
        end

        module Action
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Automation::APIStaticBranchAction,
                HubspotSDK::Automation::APIListBranchAction,
                HubspotSDK::Automation::APIAbTestBranchAction,
                HubspotSDK::Automation::APICustomCodeAction,
                HubspotSDK::Automation::APIWebhookAction,
                HubspotSDK::Automation::APISingleConnectionAction
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIContactFlowPutRequest::Action::Variants
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
                HubspotSDK::Automation::APIContactFlowPutRequest::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTACT_FLOW =
            T.let(
              :CONTACT_FLOW,
              HubspotSDK::Automation::APIContactFlowPutRequest::Type::TaggedSymbol
            )
          PLATFORM_FLOW =
            T.let(
              :PLATFORM_FLOW,
              HubspotSDK::Automation::APIContactFlowPutRequest::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIContactFlowPutRequest::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module EnrollmentCriteria
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Automation::APIListBasedEnrollmentCriteria,
                HubspotSDK::Automation::APIEventBasedEnrollmentCriteria,
                HubspotSDK::Automation::APIManualEnrollmentCriteria
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIContactFlowPutRequest::EnrollmentCriteria::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module EnrollmentSchedule
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Automation::APIDailyEnrollmentSchedule,
                HubspotSDK::Automation::APIWeeklyEnrollmentSchedule,
                HubspotSDK::Automation::APIMonthlySpecificDaysEnrollmentSchedule,
                HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule,
                HubspotSDK::Automation::APIYearlyEnrollmentSchedule,
                HubspotSDK::Automation::APIPropertyBasedEnrollmentSchedule
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIContactFlowPutRequest::EnrollmentSchedule::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module EventAnchor
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Automation::APIContactPropertyAnchor,
                HubspotSDK::Automation::APIStaticDateAnchor
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIContactFlowPutRequest::EventAnchor::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module GoalFilterBranch
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
                HubspotSDK::Automation::APIContactFlowPutRequest::GoalFilterBranch::Variants
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
