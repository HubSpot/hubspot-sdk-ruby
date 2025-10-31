# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      class FolderActionResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   When the requested changes have been completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute started_at
        #   Timestamp representing when the task was started at.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   Current status of the task.
        #
        #   @return [Symbol, HubspotSDK::Models::Files::FolderActionResponse::Status]
        required :status, enum: -> { HubspotSDK::Files::FolderActionResponse::Status }

        # @!attribute task_id
        #   ID of the task.
        #
        #   @return [String]
        required :task_id, String, api_name: :taskId

        # @!attribute errors
        #   Detailed errors resulting from the task.
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   Link to check the status of the task.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   Number of errors resulting from the requested changes.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   Timestamp representing when the task was requested.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!attribute result
        #
        #   @return [HubspotSDK::Models::Files::Folder, nil]
        optional :result, -> { HubspotSDK::Files::Folder }

        # @!method initialize(completed_at:, started_at:, status:, task_id:, errors: nil, links: nil, num_errors: nil, requested_at: nil, result: nil)
        #   @param completed_at [Time] When the requested changes have been completed.
        #
        #   @param started_at [Time] Timestamp representing when the task was started at.
        #
        #   @param status [Symbol, HubspotSDK::Models::Files::FolderActionResponse::Status] Current status of the task.
        #
        #   @param task_id [String] ID of the task.
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>] Detailed errors resulting from the task.
        #
        #   @param links [Hash{Symbol=>String}] Link to check the status of the task.
        #
        #   @param num_errors [Integer] Number of errors resulting from the requested changes.
        #
        #   @param requested_at [Time] Timestamp representing when the task was requested.
        #
        #   @param result [HubspotSDK::Models::Files::Folder]

        # Current status of the task.
        #
        # @see HubspotSDK::Models::Files::FolderActionResponse#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

          PENDING = :PENDING
          PROCESSING = :PROCESSING
          CANCELED = :CANCELED
          COMPLETE = :COMPLETE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
