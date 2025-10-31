# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class EmailSendStatusView < HubspotSDK::Internal::Type::BaseModel
        # @!attribute status
        #   Status of the send request.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::EmailSendStatusView::Status]
        required :status, enum: -> { HubspotSDK::Marketing::EmailSendStatusView::Status }

        # @!attribute status_id
        #   Identifier used to query the status of the send.
        #
        #   @return [String]
        required :status_id, String, api_name: :statusId

        # @!attribute completed_at
        #   Time when the send was completed.
        #
        #   @return [Time, nil]
        optional :completed_at, Time, api_name: :completedAt

        # @!attribute event_id
        #   The ID of a send event.
        #
        #   @return [HubspotSDK::Models::Marketing::EventIDView, nil]
        optional :event_id, -> { HubspotSDK::Marketing::EventIDView }, api_name: :eventId

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute requested_at
        #   Time when the send was requested.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!attribute send_result
        #   Result of the send.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::EmailSendStatusView::SendResult, nil]
        optional :send_result,
                 enum: -> { HubspotSDK::Marketing::EmailSendStatusView::SendResult },
                 api_name: :sendResult

        # @!attribute started_at
        #   Time when the send began processing.
        #
        #   @return [Time, nil]
        optional :started_at, Time, api_name: :startedAt

        # @!method initialize(status:, status_id:, completed_at: nil, event_id: nil, message: nil, requested_at: nil, send_result: nil, started_at: nil)
        #   Describes the status of an email send request.
        #
        #   @param status [Symbol, HubspotSDK::Models::Marketing::EmailSendStatusView::Status] Status of the send request.
        #
        #   @param status_id [String] Identifier used to query the status of the send.
        #
        #   @param completed_at [Time] Time when the send was completed.
        #
        #   @param event_id [HubspotSDK::Models::Marketing::EventIDView] The ID of a send event.
        #
        #   @param message [String]
        #
        #   @param requested_at [Time] Time when the send was requested.
        #
        #   @param send_result [Symbol, HubspotSDK::Models::Marketing::EmailSendStatusView::SendResult] Result of the send.
        #
        #   @param started_at [Time] Time when the send began processing.

        # Status of the send request.
        #
        # @see HubspotSDK::Models::Marketing::EmailSendStatusView#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

          PENDING = :PENDING
          PROCESSING = :PROCESSING
          CANCELED = :CANCELED
          COMPLETE = :COMPLETE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Result of the send.
        #
        # @see HubspotSDK::Models::Marketing::EmailSendStatusView#send_result
        module SendResult
          extend HubspotSDK::Internal::Type::Enum

          SENT = :SENT
          IDEMPOTENT_IGNORE = :IDEMPOTENT_IGNORE
          QUEUED = :QUEUED
          IDEMPOTENT_FAIL = :IDEMPOTENT_FAIL
          THROTTLED = :THROTTLED
          EMAIL_DISABLED = :EMAIL_DISABLED
          PORTAL_SUSPENDED = :PORTAL_SUSPENDED
          INVALID_TO_ADDRESS = :INVALID_TO_ADDRESS
          BLOCKED_DOMAIN = :BLOCKED_DOMAIN
          PREVIOUSLY_BOUNCED = :PREVIOUSLY_BOUNCED
          EMAIL_UNCONFIRMED = :EMAIL_UNCONFIRMED
          PREVIOUS_SPAM = :PREVIOUS_SPAM
          PREVIOUSLY_UNSUBSCRIBED_MESSAGE = :PREVIOUSLY_UNSUBSCRIBED_MESSAGE
          PREVIOUSLY_UNSUBSCRIBED_PORTAL = :PREVIOUSLY_UNSUBSCRIBED_PORTAL
          INVALID_FROM_ADDRESS = :INVALID_FROM_ADDRESS
          CAMPAIGN_CANCELLED = :CAMPAIGN_CANCELLED
          VALIDATION_FAILED = :VALIDATION_FAILED
          MTA_IGNORE = :MTA_IGNORE
          BLOCKED_ADDRESS = :BLOCKED_ADDRESS
          PORTAL_OVER_LIMIT = :PORTAL_OVER_LIMIT
          PORTAL_EXPIRED = :PORTAL_EXPIRED
          PORTAL_MISSING_MARKETING_SCOPE = :PORTAL_MISSING_MARKETING_SCOPE
          MISSING_TEMPLATE_PROPERTIES = :MISSING_TEMPLATE_PROPERTIES
          MISSING_REQUIRED_PARAMETER = :MISSING_REQUIRED_PARAMETER
          PORTAL_AUTHENTICATION_FAILURE = :PORTAL_AUTHENTICATION_FAILURE
          MISSING_CONTENT = :MISSING_CONTENT
          CORRUPT_INPUT = :CORRUPT_INPUT
          TEMPLATE_RENDER_EXCEPTION = :TEMPLATE_RENDER_EXCEPTION
          GRAYMAIL_SUPPRESSED = :GRAYMAIL_SUPPRESSED
          UNCONFIGURED_SENDING_DOMAIN = :UNCONFIGURED_SENDING_DOMAIN
          UNDELIVERABLE = :UNDELIVERABLE
          CANCELLED_ABUSE = :CANCELLED_ABUSE
          QUARANTINED_ADDRESS = :QUARANTINED_ADDRESS
          ADDRESS_ONLY_ACCEPTED_ON_PROD = :ADDRESS_ONLY_ACCEPTED_ON_PROD
          PORTAL_NOT_AUTHORIZED_FOR_APPLICATION = :PORTAL_NOT_AUTHORIZED_FOR_APPLICATION
          ADDRESS_LIST_BOMBED = :ADDRESS_LIST_BOMBED
          ADDRESS_OPTED_OUT = :ADDRESS_OPTED_OUT
          RECIPIENT_FATIGUE_SUPPRESSED = :RECIPIENT_FATIGUE_SUPPRESSED
          TOO_MANY_RECIPIENTS = :TOO_MANY_RECIPIENTS
          PREVIOUSLY_UNSUBSCRIBED_BRAND = :PREVIOUSLY_UNSUBSCRIBED_BRAND
          NON_MARKETABLE_CONTACT = :NON_MARKETABLE_CONTACT
          PREVIOUSLY_UNSUBSCRIBED_BUSINESS_UNIT = :PREVIOUSLY_UNSUBSCRIBED_BUSINESS_UNIT
          GDPR_DOI_ENABLED = :GDPR_DOI_ENABLED
          HUBL_LIMIT_EXCEEDED = :HUBL_LIMIT_EXCEEDED
          LOW_CONTACT_QUALITY_SCORE = :LOW_CONTACT_QUALITY_SCORE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
