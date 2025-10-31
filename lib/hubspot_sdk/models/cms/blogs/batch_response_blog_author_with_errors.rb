# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BatchResponseBlogAuthorWithErrors < HubspotSDK::Internal::Type::BaseModel
          # @!attribute completed_at
          #   Time of batch operation completion.
          #
          #   @return [Time]
          required :completed_at, Time, api_name: :completedAt

          # @!attribute results
          #   Results of batch operation.
          #
          #   @return [Array<HubspotSDK::Models::Cms::Blogs::BlogAuthor>]
          required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::BlogAuthor] }

          # @!attribute started_at
          #   Time of batch operation start.
          #
          #   @return [Time]
          required :started_at, Time, api_name: :startedAt

          # @!attribute status
          #   Status of batch operation.
          #
          #   @return [Symbol, HubspotSDK::Models::Cms::Blogs::BatchResponseBlogAuthorWithErrors::Status]
          required :status, enum: -> { HubspotSDK::Cms::Blogs::BatchResponseBlogAuthorWithErrors::Status }

          # @!attribute errors
          #   Errors in batch operation.
          #
          #   @return [Array<HubspotSDK::Models::StandardError>, nil]
          optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

          # @!attribute links
          #   Links associated with batch operation.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :links, HubspotSDK::Internal::Type::HashOf[String]

          # @!attribute num_errors
          #   Number of errors.
          #
          #   @return [Integer, nil]
          optional :num_errors, Integer, api_name: :numErrors

          # @!attribute requested_at
          #   Time of batch operation request.
          #
          #   @return [Time, nil]
          optional :requested_at, Time, api_name: :requestedAt

          # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
          #   Response object for batch operations on blog authors with errors.
          #
          #   @param completed_at [Time] Time of batch operation completion.
          #
          #   @param results [Array<HubspotSDK::Models::Cms::Blogs::BlogAuthor>] Results of batch operation.
          #
          #   @param started_at [Time] Time of batch operation start.
          #
          #   @param status [Symbol, HubspotSDK::Models::Cms::Blogs::BatchResponseBlogAuthorWithErrors::Status] Status of batch operation.
          #
          #   @param errors [Array<HubspotSDK::Models::StandardError>] Errors in batch operation.
          #
          #   @param links [Hash{Symbol=>String}] Links associated with batch operation.
          #
          #   @param num_errors [Integer] Number of errors.
          #
          #   @param requested_at [Time] Time of batch operation request.

          # Status of batch operation.
          #
          # @see HubspotSDK::Models::Cms::Blogs::BatchResponseBlogAuthorWithErrors#status
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
end
