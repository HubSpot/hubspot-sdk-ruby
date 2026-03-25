# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      class FileActionResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   Time of completion of task.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute started_at
        #   Timestamp of when the task was started.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   Current status of the task.
        #
        #   @return [Symbol, HubspotSDK::Models::Files::FileActionResponse::Status]
        required :status, enum: -> { HubspotSDK::Files::FileActionResponse::Status }

        # @!attribute task_id
        #   ID of the requested task.
        #
        #   @return [String]
        required :task_id, String, api_name: :taskId

        # @!attribute errors
        #   Descriptive error messages.
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   Link to check the status of the requested task.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   Number of errors resulting from the task.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   Timestamp of when the task was requested.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!attribute result
        #
        #   @return [HubspotSDK::Models::Files::File, nil]
        optional :result, -> { HubspotSDK::Files::File }

        # @!method initialize(completed_at:, started_at:, status:, task_id:, errors: nil, links: nil, num_errors: nil, requested_at: nil, result: nil)
        #   @param completed_at [Time] Time of completion of task.
        #
        #   @param started_at [Time] Timestamp of when the task was started.
        #
        #   @param status [Symbol, HubspotSDK::Models::Files::FileActionResponse::Status] Current status of the task.
        #
        #   @param task_id [String] ID of the requested task.
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>] Descriptive error messages.
        #
        #   @param links [Hash{Symbol=>String}] Link to check the status of the requested task.
        #
        #   @param num_errors [Integer] Number of errors resulting from the task.
        #
        #   @param requested_at [Time] Timestamp of when the task was requested.
        #
        #   @param result [HubspotSDK::Models::Files::File]

        # Current status of the task.
        #
        # @see HubspotSDK::Models::Files::FileActionResponse#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

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
