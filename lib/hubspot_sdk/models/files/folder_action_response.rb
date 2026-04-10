# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      class FolderActionResponse < HubSpotSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, HubSpotSDK::Models::Files::FolderActionResponse::Status]
        required :status, enum: -> { HubSpotSDK::Files::FolderActionResponse::Status }

        # @!attribute task_id
        #   ID of the task.
        #
        #   @return [String]
        required :task_id, String, api_name: :taskId

        # @!attribute errors
        #   Detailed errors resulting from the task.
        #
        #   @return [Array<HubSpotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError] }

        # @!attribute links
        #   Link to check the status of the task.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

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
        #   @return [HubSpotSDK::Models::Files::Folder, nil]
        optional :result, -> { HubSpotSDK::Files::Folder }

        # @!method initialize(completed_at:, started_at:, status:, task_id:, errors: nil, links: nil, num_errors: nil, requested_at: nil, result: nil)
        #   @param completed_at [Time] When the requested changes have been completed.
        #
        #   @param started_at [Time] Timestamp representing when the task was started at.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Files::FolderActionResponse::Status] Current status of the task.
        #
        #   @param task_id [String] ID of the task.
        #
        #   @param errors [Array<HubSpotSDK::Models::StandardError>] Detailed errors resulting from the task.
        #
        #   @param links [Hash{Symbol=>String}] Link to check the status of the task.
        #
        #   @param num_errors [Integer] Number of errors resulting from the requested changes.
        #
        #   @param requested_at [Time] Timestamp representing when the task was requested.
        #
        #   @param result [HubSpotSDK::Models::Files::Folder]

        # Current status of the task.
        #
        # @see HubSpotSDK::Models::Files::FolderActionResponse#status
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          CANCELED = :CANCELED
          COMPLETE = :COMPLETE
          PENDING = :PENDING
          PROCESSING = :PROCESSING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
