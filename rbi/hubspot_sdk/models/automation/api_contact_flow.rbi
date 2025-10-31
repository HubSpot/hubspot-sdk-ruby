# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIContactFlow < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIContactFlow,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            T::Array[HubspotSDK::Automation::APIContactFlow::Action::Variants]
          )
        end
        attr_accessor :actions

        sig { returns(T::Array[HubspotSDK::Automation::APIBlockedDate]) }
        attr_accessor :blocked_dates

        sig { returns(T::Boolean) }
        attr_accessor :can_enroll_from_salesforce

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(
            HubspotSDK::Automation::APIContactFlow::CRMObjectCreationStatus::TaggedSymbol
          )
        end
        attr_accessor :crm_object_creation_status

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :custom_properties

        sig do
          returns(
            T::Array[
              HubspotSDK::Automation::APIContactFlow::DataSource::Variants
            ]
          )
        end
        attr_accessor :data_sources

        sig do
          returns(
            HubspotSDK::Automation::APIContactFlow::FlowType::TaggedSymbol
          )
        end
        attr_accessor :flow_type

        sig { returns(T::Boolean) }
        attr_accessor :is_enabled

        sig { returns(String) }
        attr_accessor :next_available_action_id

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :revision_id

        sig { returns(T::Array[Integer]) }
        attr_accessor :suppression_list_ids

        sig { returns(T::Array[HubspotSDK::Automation::APITimeWindow]) }
        attr_accessor :time_windows

        sig do
          returns(HubspotSDK::Automation::APIContactFlow::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig do
          returns(
            T.nilable(
              HubspotSDK::Automation::APIContactFlow::EnrollmentCriteria::Variants
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
              HubspotSDK::Automation::APIContactFlow::EnrollmentSchedule::Variants
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
              HubspotSDK::Automation::APIContactFlow::EventAnchor::Variants
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
              HubspotSDK::Automation::APIContactFlow::GoalFilterBranch::Variants
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
            id: String,
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
            created_at: Time,
            crm_object_creation_status:
              HubspotSDK::Automation::APIContactFlow::CRMObjectCreationStatus::OrSymbol,
            custom_properties: T::Hash[Symbol, String],
            data_sources:
              T::Array[
                T.any(
                  HubspotSDK::Automation::APIAssociationDataSource::OrHash,
                  HubspotSDK::Automation::APIAssociationTimestampDataSource::OrHash,
                  HubspotSDK::Automation::APIStaticPropertyFilterDataSource::OrHash,
                  HubspotSDK::Automation::APIEnrolledRecordPropertyFilterDataSource::OrHash,
                  HubspotSDK::Automation::APIDatasetFieldPropertyFilterDataSource::OrHash,
                  HubspotSDK::Automation::APIEnrolledArgumentPropertyFilterDataSource::OrHash
                )
              ],
            flow_type:
              HubspotSDK::Automation::APIContactFlow::FlowType::OrSymbol,
            is_enabled: T::Boolean,
            next_available_action_id: String,
            object_type_id: String,
            revision_id: String,
            suppression_list_ids: T::Array[Integer],
            time_windows:
              T::Array[HubspotSDK::Automation::APITimeWindow::OrHash],
            type: HubspotSDK::Automation::APIContactFlow::Type::OrSymbol,
            updated_at: Time,
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
          id:,
          actions:,
          blocked_dates:,
          can_enroll_from_salesforce:,
          created_at:,
          crm_object_creation_status:,
          custom_properties:,
          data_sources:,
          flow_type:,
          is_enabled:,
          next_available_action_id:,
          object_type_id:,
          revision_id:,
          suppression_list_ids:,
          time_windows:,
          type:,
          updated_at:,
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
              id: String,
              actions:
                T::Array[
                  HubspotSDK::Automation::APIContactFlow::Action::Variants
                ],
              blocked_dates: T::Array[HubspotSDK::Automation::APIBlockedDate],
              can_enroll_from_salesforce: T::Boolean,
              created_at: Time,
              crm_object_creation_status:
                HubspotSDK::Automation::APIContactFlow::CRMObjectCreationStatus::TaggedSymbol,
              custom_properties: T::Hash[Symbol, String],
              data_sources:
                T::Array[
                  HubspotSDK::Automation::APIContactFlow::DataSource::Variants
                ],
              flow_type:
                HubspotSDK::Automation::APIContactFlow::FlowType::TaggedSymbol,
              is_enabled: T::Boolean,
              next_available_action_id: String,
              object_type_id: String,
              revision_id: String,
              suppression_list_ids: T::Array[Integer],
              time_windows: T::Array[HubspotSDK::Automation::APITimeWindow],
              type: HubspotSDK::Automation::APIContactFlow::Type::TaggedSymbol,
              updated_at: Time,
              description: String,
              enrollment_criteria:
                HubspotSDK::Automation::APIContactFlow::EnrollmentCriteria::Variants,
              enrollment_schedule:
                HubspotSDK::Automation::APIContactFlow::EnrollmentSchedule::Variants,
              event_anchor:
                HubspotSDK::Automation::APIContactFlow::EventAnchor::Variants,
              goal_filter_branch:
                HubspotSDK::Automation::APIContactFlow::GoalFilterBranch::Variants,
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
              T::Array[HubspotSDK::Automation::APIContactFlow::Action::Variants]
            )
          end
          def self.variants
          end
        end

        module CRMObjectCreationStatus
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIContactFlow::CRMObjectCreationStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Automation::APIContactFlow::CRMObjectCreationStatus::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Automation::APIContactFlow::CRMObjectCreationStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIContactFlow::CRMObjectCreationStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module DataSource
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Automation::APIAssociationDataSource,
                HubspotSDK::Automation::APIAssociationTimestampDataSource,
                HubspotSDK::Automation::APIStaticPropertyFilterDataSource,
                HubspotSDK::Automation::APIEnrolledRecordPropertyFilterDataSource,
                HubspotSDK::Automation::APIDatasetFieldPropertyFilterDataSource,
                HubspotSDK::Automation::APIEnrolledArgumentPropertyFilterDataSource
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIContactFlow::DataSource::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module FlowType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APIContactFlow::FlowType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WORKFLOW =
            T.let(
              :WORKFLOW,
              HubspotSDK::Automation::APIContactFlow::FlowType::TaggedSymbol
            )
          ACTION_SET =
            T.let(
              :ACTION_SET,
              HubspotSDK::Automation::APIContactFlow::FlowType::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubspotSDK::Automation::APIContactFlow::FlowType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIContactFlow::FlowType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APIContactFlow::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTACT_FLOW =
            T.let(
              :CONTACT_FLOW,
              HubspotSDK::Automation::APIContactFlow::Type::TaggedSymbol
            )
          PLATFORM_FLOW =
            T.let(
              :PLATFORM_FLOW,
              HubspotSDK::Automation::APIContactFlow::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIContactFlow::Type::TaggedSymbol
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
                HubspotSDK::Automation::APIContactFlow::EnrollmentCriteria::Variants
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
                HubspotSDK::Automation::APIContactFlow::EnrollmentSchedule::Variants
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
                HubspotSDK::Automation::APIContactFlow::EventAnchor::Variants
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
                HubspotSDK::Automation::APIContactFlow::GoalFilterBranch::Variants
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
