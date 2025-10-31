# frozen_string_literal: true

module HubspotSDK
  module Models
    class ActionResponse < HubspotSDK::Internal::Type::BaseModel
      # @!attribute completed_at
      #
      #   @return [Time]
      required :completed_at, Time, api_name: :completedAt

      # @!attribute started_at
      #
      #   @return [Time]
      required :started_at, Time, api_name: :startedAt

      # @!attribute status
      #
      #   @return [Symbol, HubspotSDK::Models::ActionResponse::Status]
      required :status, enum: -> { HubspotSDK::ActionResponse::Status }

      # @!attribute links
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :links, HubspotSDK::Internal::Type::HashOf[String]

      # @!attribute requested_at
      #
      #   @return [Time, nil]
      optional :requested_at, Time, api_name: :requestedAt

      # @!method initialize(completed_at:, started_at:, status:, links: nil, requested_at: nil)
      #   @param completed_at [Time]
      #   @param started_at [Time]
      #   @param status [Symbol, HubspotSDK::Models::ActionResponse::Status]
      #   @param links [Hash{Symbol=>String}]
      #   @param requested_at [Time]

      # @see HubspotSDK::Models::ActionResponse#status
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
