# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIPlatformFlowCreateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIPlatformFlowCreateRequest,
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

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :custom_properties

        sig do
          returns(
            T::Array[
              T.any(
                HubspotSDK::Automation::APIAssociationDataSource,
                HubspotSDK::Automation::APIAssociationTimestampDataSource,
                HubspotSDK::Automation::APIStaticPropertyFilterDataSource,
                HubspotSDK::Automation::APIEnrolledRecordPropertyFilterDataSource,
                HubspotSDK::Automation::APIDatasetFieldPropertyFilterDataSource,
                HubspotSDK::Automation::APIEnrolledArgumentPropertyFilterDataSource
              )
            ]
          )
        end
        attr_accessor :data_sources

        sig do
          returns(
            HubspotSDK::Automation::APIPlatformFlowCreateRequest::FlowType::OrSymbol
          )
        end
        attr_accessor :flow_type

        sig { returns(T::Boolean) }
        attr_accessor :is_enabled

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(T::Array[HubspotSDK::Automation::APITimeWindow]) }
        attr_accessor :time_windows

        sig do
          returns(
            HubspotSDK::Automation::APIPlatformFlowCreateRequest::Type::OrSymbol
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

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :start_action_id

        sig { params(start_action_id: String).void }
        attr_writer :start_action_id

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
        attr_reader :suppression_filter_branch

        sig do
          params(
            suppression_filter_branch:
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
        attr_writer :suppression_filter_branch

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
              HubspotSDK::Automation::APIPlatformFlowCreateRequest::FlowType::OrSymbol,
            is_enabled: T::Boolean,
            object_type_id: String,
            time_windows:
              T::Array[HubspotSDK::Automation::APITimeWindow::OrHash],
            type:
              HubspotSDK::Automation::APIPlatformFlowCreateRequest::Type::OrSymbol,
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
            name: String,
            start_action_id: String,
            suppression_filter_branch:
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
            uuid: String
          ).returns(T.attached_class)
        end
        def self.new(
          actions:,
          blocked_dates:,
          custom_properties:,
          data_sources:,
          flow_type:,
          is_enabled:,
          object_type_id:,
          time_windows:,
          type:,
          description: nil,
          enrollment_criteria: nil,
          enrollment_schedule: nil,
          name: nil,
          start_action_id: nil,
          suppression_filter_branch: nil,
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
              custom_properties: T::Hash[Symbol, String],
              data_sources:
                T::Array[
                  T.any(
                    HubspotSDK::Automation::APIAssociationDataSource,
                    HubspotSDK::Automation::APIAssociationTimestampDataSource,
                    HubspotSDK::Automation::APIStaticPropertyFilterDataSource,
                    HubspotSDK::Automation::APIEnrolledRecordPropertyFilterDataSource,
                    HubspotSDK::Automation::APIDatasetFieldPropertyFilterDataSource,
                    HubspotSDK::Automation::APIEnrolledArgumentPropertyFilterDataSource
                  )
                ],
              flow_type:
                HubspotSDK::Automation::APIPlatformFlowCreateRequest::FlowType::OrSymbol,
              is_enabled: T::Boolean,
              object_type_id: String,
              time_windows: T::Array[HubspotSDK::Automation::APITimeWindow],
              type:
                HubspotSDK::Automation::APIPlatformFlowCreateRequest::Type::OrSymbol,
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
              name: String,
              start_action_id: String,
              suppression_filter_branch:
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
                HubspotSDK::Automation::APIPlatformFlowCreateRequest::Action::Variants
              ]
            )
          end
          def self.variants
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
                HubspotSDK::Automation::APIPlatformFlowCreateRequest::DataSource::Variants
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
              T.all(
                Symbol,
                HubspotSDK::Automation::APIPlatformFlowCreateRequest::FlowType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WORKFLOW =
            T.let(
              :WORKFLOW,
              HubspotSDK::Automation::APIPlatformFlowCreateRequest::FlowType::TaggedSymbol
            )
          ACTION_SET =
            T.let(
              :ACTION_SET,
              HubspotSDK::Automation::APIPlatformFlowCreateRequest::FlowType::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubspotSDK::Automation::APIPlatformFlowCreateRequest::FlowType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIPlatformFlowCreateRequest::FlowType::TaggedSymbol
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
              T.all(
                Symbol,
                HubspotSDK::Automation::APIPlatformFlowCreateRequest::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTACT_FLOW =
            T.let(
              :CONTACT_FLOW,
              HubspotSDK::Automation::APIPlatformFlowCreateRequest::Type::TaggedSymbol
            )
          PLATFORM_FLOW =
            T.let(
              :PLATFORM_FLOW,
              HubspotSDK::Automation::APIPlatformFlowCreateRequest::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIPlatformFlowCreateRequest::Type::TaggedSymbol
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
                HubspotSDK::Automation::APIPlatformFlowCreateRequest::EnrollmentCriteria::Variants
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
                HubspotSDK::Automation::APIPlatformFlowCreateRequest::EnrollmentSchedule::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module SuppressionFilterBranch
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
                HubspotSDK::Automation::APIPlatformFlowCreateRequest::SuppressionFilterBranch::Variants
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
