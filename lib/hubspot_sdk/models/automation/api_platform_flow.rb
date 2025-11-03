# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIPlatformFlow < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute actions
        #
        #   @return [Array<HubspotSDK::Models::Automation::APIStaticBranchAction, HubspotSDK::Models::Automation::APIListBranchAction, HubspotSDK::Models::Automation::APIAbTestBranchAction, HubspotSDK::Models::Automation::APICustomCodeAction, HubspotSDK::Models::Automation::APIWebhookAction, HubspotSDK::Models::Automation::APISingleConnectionAction>]
        required :actions,
                 -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Automation::APIPlatformFlow::Action] }

        # @!attribute blocked_dates
        #
        #   @return [Array<HubspotSDK::Models::Automation::APIBlockedDate>]
        required :blocked_dates,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::APIBlockedDate] },
                 api_name: :blockedDates

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute crm_object_creation_status
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIPlatformFlow::CrmObjectCreationStatus]
        required :crm_object_creation_status,
                 enum: -> { HubspotSDK::Automation::APIPlatformFlow::CrmObjectCreationStatus },
                 api_name: :crmObjectCreationStatus

        # @!attribute custom_properties
        #
        #   @return [Hash{Symbol=>String}]
        required :custom_properties, HubspotSDK::Internal::Type::HashOf[String], api_name: :customProperties

        # @!attribute data_sources
        #
        #   @return [Array<HubspotSDK::Models::Automation::APIAssociationDataSource, HubspotSDK::Models::Automation::APIAssociationTimestampDataSource, HubspotSDK::Models::Automation::APIStaticPropertyFilterDataSource, HubspotSDK::Models::Automation::APIEnrolledRecordPropertyFilterDataSource, HubspotSDK::Models::Automation::APIDatasetFieldPropertyFilterDataSource, HubspotSDK::Models::Automation::APIEnrolledArgumentPropertyFilterDataSource>]
        required :data_sources,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Automation::APIPlatformFlow::DataSource]
                 },
                 api_name: :dataSources

        # @!attribute flow_type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIPlatformFlow::FlowType]
        required :flow_type,
                 enum: -> {
                   HubspotSDK::Automation::APIPlatformFlow::FlowType
                 },
                 api_name: :flowType

        # @!attribute is_enabled
        #
        #   @return [Boolean]
        required :is_enabled, HubspotSDK::Internal::Type::Boolean, api_name: :isEnabled

        # @!attribute next_available_action_id
        #
        #   @return [String]
        required :next_available_action_id, String, api_name: :nextAvailableActionId

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute revision_id
        #
        #   @return [String]
        required :revision_id, String, api_name: :revisionId

        # @!attribute time_windows
        #
        #   @return [Array<HubspotSDK::Models::Automation::APITimeWindow>]
        required :time_windows,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::APITimeWindow] },
                 api_name: :timeWindows

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIPlatformFlow::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIPlatformFlow::Type }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute enrollment_criteria
        #
        #   @return [HubspotSDK::Models::Automation::APIListBasedEnrollmentCriteria, HubspotSDK::Models::Automation::APIEventBasedEnrollmentCriteria, HubspotSDK::Models::Automation::APIManualEnrollmentCriteria, nil]
        optional :enrollment_criteria,
                 union: -> { HubspotSDK::Automation::APIPlatformFlow::EnrollmentCriteria },
                 api_name: :enrollmentCriteria

        # @!attribute enrollment_schedule
        #
        #   @return [HubspotSDK::Models::Automation::APIDailyEnrollmentSchedule, HubspotSDK::Models::Automation::APIWeeklyEnrollmentSchedule, HubspotSDK::Models::Automation::APIMonthlySpecificDaysEnrollmentSchedule, HubspotSDK::Models::Automation::APIMonthlyRelativeDaysEnrollmentSchedule, HubspotSDK::Models::Automation::APIYearlyEnrollmentSchedule, HubspotSDK::Models::Automation::APIPropertyBasedEnrollmentSchedule, nil]
        optional :enrollment_schedule,
                 union: -> { HubspotSDK::Automation::APIPlatformFlow::EnrollmentSchedule },
                 api_name: :enrollmentSchedule

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute start_action_id
        #
        #   @return [String, nil]
        optional :start_action_id, String, api_name: :startActionId

        # @!attribute suppression_filter_branch
        #
        #   @return [HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch, nil]
        optional :suppression_filter_branch,
                 union: -> { HubspotSDK::Automation::APIPlatformFlow::SuppressionFilterBranch },
                 api_name: :suppressionFilterBranch

        # @!attribute uuid
        #
        #   @return [String, nil]
        optional :uuid, String

        # @!method initialize(id:, actions:, blocked_dates:, created_at:, crm_object_creation_status:, custom_properties:, data_sources:, flow_type:, is_enabled:, next_available_action_id:, object_type_id:, revision_id:, time_windows:, type:, updated_at:, description: nil, enrollment_criteria: nil, enrollment_schedule: nil, name: nil, start_action_id: nil, suppression_filter_branch: nil, uuid: nil)
        #   @param id [String]
        #   @param actions [Array<HubspotSDK::Models::Automation::APIStaticBranchAction, HubspotSDK::Models::Automation::APIListBranchAction, HubspotSDK::Models::Automation::APIAbTestBranchAction, HubspotSDK::Models::Automation::APICustomCodeAction, HubspotSDK::Models::Automation::APIWebhookAction, HubspotSDK::Models::Automation::APISingleConnectionAction>]
        #   @param blocked_dates [Array<HubspotSDK::Models::Automation::APIBlockedDate>]
        #   @param created_at [Time]
        #   @param crm_object_creation_status [Symbol, HubspotSDK::Models::Automation::APIPlatformFlow::CrmObjectCreationStatus]
        #   @param custom_properties [Hash{Symbol=>String}]
        #   @param data_sources [Array<HubspotSDK::Models::Automation::APIAssociationDataSource, HubspotSDK::Models::Automation::APIAssociationTimestampDataSource, HubspotSDK::Models::Automation::APIStaticPropertyFilterDataSource, HubspotSDK::Models::Automation::APIEnrolledRecordPropertyFilterDataSource, HubspotSDK::Models::Automation::APIDatasetFieldPropertyFilterDataSource, HubspotSDK::Models::Automation::APIEnrolledArgumentPropertyFilterDataSource>]
        #   @param flow_type [Symbol, HubspotSDK::Models::Automation::APIPlatformFlow::FlowType]
        #   @param is_enabled [Boolean]
        #   @param next_available_action_id [String]
        #   @param object_type_id [String]
        #   @param revision_id [String]
        #   @param time_windows [Array<HubspotSDK::Models::Automation::APITimeWindow>]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIPlatformFlow::Type]
        #   @param updated_at [Time]
        #   @param description [String]
        #   @param enrollment_criteria [HubspotSDK::Models::Automation::APIListBasedEnrollmentCriteria, HubspotSDK::Models::Automation::APIEventBasedEnrollmentCriteria, HubspotSDK::Models::Automation::APIManualEnrollmentCriteria]
        #   @param enrollment_schedule [HubspotSDK::Models::Automation::APIDailyEnrollmentSchedule, HubspotSDK::Models::Automation::APIWeeklyEnrollmentSchedule, HubspotSDK::Models::Automation::APIMonthlySpecificDaysEnrollmentSchedule, HubspotSDK::Models::Automation::APIMonthlyRelativeDaysEnrollmentSchedule, HubspotSDK::Models::Automation::APIYearlyEnrollmentSchedule, HubspotSDK::Models::Automation::APIPropertyBasedEnrollmentSchedule]
        #   @param name [String]
        #   @param start_action_id [String]
        #   @param suppression_filter_branch [HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch]
        #   @param uuid [String]

        module Action
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Automation::APIStaticBranchAction }

          variant -> { HubspotSDK::Automation::APIListBranchAction }

          variant -> { HubspotSDK::Automation::APIAbTestBranchAction }

          variant -> { HubspotSDK::Automation::APICustomCodeAction }

          variant -> { HubspotSDK::Automation::APIWebhookAction }

          variant -> { HubspotSDK::Automation::APISingleConnectionAction }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Automation::APIStaticBranchAction, HubspotSDK::Models::Automation::APIListBranchAction, HubspotSDK::Models::Automation::APIAbTestBranchAction, HubspotSDK::Models::Automation::APICustomCodeAction, HubspotSDK::Models::Automation::APIWebhookAction, HubspotSDK::Models::Automation::APISingleConnectionAction)]
        end

        # @see HubspotSDK::Models::Automation::APIPlatformFlow#crm_object_creation_status
        module CrmObjectCreationStatus
          extend HubspotSDK::Internal::Type::Enum

          PENDING = :PENDING
          COMPLETE = :COMPLETE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module DataSource
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Automation::APIAssociationDataSource }

          variant -> { HubspotSDK::Automation::APIAssociationTimestampDataSource }

          variant -> { HubspotSDK::Automation::APIStaticPropertyFilterDataSource }

          variant -> { HubspotSDK::Automation::APIEnrolledRecordPropertyFilterDataSource }

          variant -> { HubspotSDK::Automation::APIDatasetFieldPropertyFilterDataSource }

          variant -> { HubspotSDK::Automation::APIEnrolledArgumentPropertyFilterDataSource }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Automation::APIAssociationDataSource, HubspotSDK::Models::Automation::APIAssociationTimestampDataSource, HubspotSDK::Models::Automation::APIStaticPropertyFilterDataSource, HubspotSDK::Models::Automation::APIEnrolledRecordPropertyFilterDataSource, HubspotSDK::Models::Automation::APIDatasetFieldPropertyFilterDataSource, HubspotSDK::Models::Automation::APIEnrolledArgumentPropertyFilterDataSource)]
        end

        # @see HubspotSDK::Models::Automation::APIPlatformFlow#flow_type
        module FlowType
          extend HubspotSDK::Internal::Type::Enum

          WORKFLOW = :WORKFLOW
          ACTION_SET = :ACTION_SET
          UNKNOWN = :UNKNOWN

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Automation::APIPlatformFlow#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          CONTACT_FLOW = :CONTACT_FLOW
          PLATFORM_FLOW = :PLATFORM_FLOW

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Automation::APIPlatformFlow#enrollment_criteria
        module EnrollmentCriteria
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Automation::APIListBasedEnrollmentCriteria }

          variant -> { HubspotSDK::Automation::APIEventBasedEnrollmentCriteria }

          variant -> { HubspotSDK::Automation::APIManualEnrollmentCriteria }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Automation::APIListBasedEnrollmentCriteria, HubspotSDK::Models::Automation::APIEventBasedEnrollmentCriteria, HubspotSDK::Models::Automation::APIManualEnrollmentCriteria)]
        end

        # @see HubspotSDK::Models::Automation::APIPlatformFlow#enrollment_schedule
        module EnrollmentSchedule
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Automation::APIDailyEnrollmentSchedule }

          variant -> { HubspotSDK::Automation::APIWeeklyEnrollmentSchedule }

          variant -> { HubspotSDK::Automation::APIMonthlySpecificDaysEnrollmentSchedule }

          variant -> { HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule }

          variant -> { HubspotSDK::Automation::APIYearlyEnrollmentSchedule }

          variant -> { HubspotSDK::Automation::APIPropertyBasedEnrollmentSchedule }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Automation::APIDailyEnrollmentSchedule, HubspotSDK::Models::Automation::APIWeeklyEnrollmentSchedule, HubspotSDK::Models::Automation::APIMonthlySpecificDaysEnrollmentSchedule, HubspotSDK::Models::Automation::APIMonthlyRelativeDaysEnrollmentSchedule, HubspotSDK::Models::Automation::APIYearlyEnrollmentSchedule, HubspotSDK::Models::Automation::APIPropertyBasedEnrollmentSchedule)]
        end

        # @see HubspotSDK::Models::Automation::APIPlatformFlow#suppression_filter_branch
        module SuppressionFilterBranch
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
