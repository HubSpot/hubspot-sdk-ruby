# frozen_string_literal: true

module HubspotSDK
  module Models
    class ActionResponse < HubspotSDK::Internal::Type::BaseModel
      # @!attribute completed_at
      #   The timestamp indicating when the action was completed.
      #
      #   @return [Time]
      required :completed_at, Time, api_name: :completedAt

      # @!attribute started_at
      #   The timestamp indicating when the action was started.
      #
      #   @return [Time]
      required :started_at, Time, api_name: :startedAt

      # @!attribute status
      #   The current status of the action, with possible values: CANCELED, COMPLETE,
      #   PENDING, PROCESSING.
      #
      #   @return [Symbol, HubspotSDK::Models::ActionResponse::Status]
      required :status, enum: -> { HubspotSDK::ActionResponse::Status }

      # @!attribute links
      #   A collection of related links associated with the action.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :links, HubspotSDK::Internal::Type::HashOf[String]

      # @!attribute requested_at
      #   The timestamp indicating when the action was requested.
      #
      #   @return [Time, nil]
      optional :requested_at, Time, api_name: :requestedAt

      # @!method initialize(completed_at:, started_at:, status:, links: nil, requested_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {HubspotSDK::Models::ActionResponse} for more details.
      #
      #   @param completed_at [Time] The timestamp indicating when the action was completed.
      #
      #   @param started_at [Time] The timestamp indicating when the action was started.
      #
      #   @param status [Symbol, HubspotSDK::Models::ActionResponse::Status] The current status of the action, with possible values: CANCELED, COMPLETE, PEND
      #
      #   @param links [Hash{Symbol=>String}] A collection of related links associated with the action.
      #
      #   @param requested_at [Time] The timestamp indicating when the action was requested.

      # The current status of the action, with possible values: CANCELED, COMPLETE,
      # PENDING, PROCESSING.
      #
      # @see HubspotSDK::Models::ActionResponse#status
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
