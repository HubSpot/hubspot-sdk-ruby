# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class EmailSendStatusView < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::EmailSendStatusView,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Status of the send request.
        sig do
          returns(
            HubSpotSDK::Marketing::EmailSendStatusView::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Identifier used to query the status of the send.
        sig { returns(String) }
        attr_accessor :status_id

        # Time when the send was completed.
        sig { returns(T.nilable(Time)) }
        attr_reader :completed_at

        sig { params(completed_at: Time).void }
        attr_writer :completed_at

        sig { returns(T.nilable(HubSpotSDK::Marketing::EventIDView)) }
        attr_reader :event_id

        sig do
          params(event_id: HubSpotSDK::Marketing::EventIDView::OrHash).void
        end
        attr_writer :event_id

        # A human readable message describing the error along with remediation steps where
        # appropriate
        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        # Time when the send was requested.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        # Result of the send.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          )
        end
        attr_reader :send_result

        sig do
          params(
            send_result:
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::OrSymbol
          ).void
        end
        attr_writer :send_result

        # Time when the send began processing.
        sig { returns(T.nilable(Time)) }
        attr_reader :started_at

        sig { params(started_at: Time).void }
        attr_writer :started_at

        sig do
          params(
            status:
              HubSpotSDK::Marketing::EmailSendStatusView::Status::OrSymbol,
            status_id: String,
            completed_at: Time,
            event_id: HubSpotSDK::Marketing::EventIDView::OrHash,
            message: String,
            requested_at: Time,
            send_result:
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::OrSymbol,
            started_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Status of the send request.
          status:,
          # Identifier used to query the status of the send.
          status_id:,
          # Time when the send was completed.
          completed_at: nil,
          event_id: nil,
          # A human readable message describing the error along with remediation steps where
          # appropriate
          message: nil,
          # Time when the send was requested.
          requested_at: nil,
          # Result of the send.
          send_result: nil,
          # Time when the send began processing.
          started_at: nil
        )
        end

        sig do
          override.returns(
            {
              status:
                HubSpotSDK::Marketing::EmailSendStatusView::Status::TaggedSymbol,
              status_id: String,
              completed_at: Time,
              event_id: HubSpotSDK::Marketing::EventIDView,
              message: String,
              requested_at: Time,
              send_result:
                HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol,
              started_at: Time
            }
          )
        end
        def to_hash
        end

        # Status of the send request.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Marketing::EmailSendStatusView::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Marketing::EmailSendStatusView::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Marketing::EmailSendStatusView::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Marketing::EmailSendStatusView::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Marketing::EmailSendStatusView::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::EmailSendStatusView::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Result of the send.
        module SendResult
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Marketing::EmailSendStatusView::SendResult
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADDRESS_LIST_BOMBED =
            T.let(
              :ADDRESS_LIST_BOMBED,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          ADDRESS_ONLY_ACCEPTED_ON_PROD =
            T.let(
              :ADDRESS_ONLY_ACCEPTED_ON_PROD,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          ADDRESS_OPTED_OUT =
            T.let(
              :ADDRESS_OPTED_OUT,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          ATTACHMENT_DOWNLOAD_QUEUE_FULL =
            T.let(
              :ATTACHMENT_DOWNLOAD_QUEUE_FULL,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          BLOCKED_ADDRESS =
            T.let(
              :BLOCKED_ADDRESS,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          BLOCKED_DOMAIN =
            T.let(
              :BLOCKED_DOMAIN,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          BRAND_RECIPIENT_FATIGUE_SUPPRESSED =
            T.let(
              :BRAND_RECIPIENT_FATIGUE_SUPPRESSED,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          CAMPAIGN_CANCELLED =
            T.let(
              :CAMPAIGN_CANCELLED,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          CANCELLED_ABUSE =
            T.let(
              :CANCELLED_ABUSE,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          CORRUPT_INPUT =
            T.let(
              :CORRUPT_INPUT,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          EMAIL_DISABLED =
            T.let(
              :EMAIL_DISABLED,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          EMAIL_UNCONFIRMED =
            T.let(
              :EMAIL_UNCONFIRMED,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          GDPR_DOI_ENABLED =
            T.let(
              :GDPR_DOI_ENABLED,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          GRAYMAIL_SUPPRESSED =
            T.let(
              :GRAYMAIL_SUPPRESSED,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          HUBL_LIMIT_EXCEEDED =
            T.let(
              :HUBL_LIMIT_EXCEEDED,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          IDEMPOTENT_FAIL =
            T.let(
              :IDEMPOTENT_FAIL,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          IDEMPOTENT_IGNORE =
            T.let(
              :IDEMPOTENT_IGNORE,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          INVALID_APP_ID_ATTRIBUTION =
            T.let(
              :INVALID_APP_ID_ATTRIBUTION,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          INVALID_FROM_ADDRESS =
            T.let(
              :INVALID_FROM_ADDRESS,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          INVALID_TO_ADDRESS =
            T.let(
              :INVALID_TO_ADDRESS,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          LOW_CONTACT_QUALITY_SCORE =
            T.let(
              :LOW_CONTACT_QUALITY_SCORE,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          MISSING_CONTENT =
            T.let(
              :MISSING_CONTENT,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          MISSING_REQUIRED_PARAMETER =
            T.let(
              :MISSING_REQUIRED_PARAMETER,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          MISSING_TEMPLATE_PROPERTIES =
            T.let(
              :MISSING_TEMPLATE_PROPERTIES,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          MTA_IGNORE =
            T.let(
              :MTA_IGNORE,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          NON_MARKETABLE_CONTACT =
            T.let(
              :NON_MARKETABLE_CONTACT,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PORTAL_AUTHENTICATION_FAILURE =
            T.let(
              :PORTAL_AUTHENTICATION_FAILURE,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PORTAL_EXPIRED =
            T.let(
              :PORTAL_EXPIRED,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PORTAL_MISSING_MARKETING_SCOPE =
            T.let(
              :PORTAL_MISSING_MARKETING_SCOPE,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PORTAL_NOT_AUTHORIZED_FOR_APPLICATION =
            T.let(
              :PORTAL_NOT_AUTHORIZED_FOR_APPLICATION,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PORTAL_OVER_LIMIT =
            T.let(
              :PORTAL_OVER_LIMIT,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PORTAL_SUSPENDED =
            T.let(
              :PORTAL_SUSPENDED,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PREVIOUS_SPAM =
            T.let(
              :PREVIOUS_SPAM,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PREVIOUSLY_BOUNCED =
            T.let(
              :PREVIOUSLY_BOUNCED,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PREVIOUSLY_UNSUBSCRIBED_BRAND =
            T.let(
              :PREVIOUSLY_UNSUBSCRIBED_BRAND,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PREVIOUSLY_UNSUBSCRIBED_BUSINESS_UNIT =
            T.let(
              :PREVIOUSLY_UNSUBSCRIBED_BUSINESS_UNIT,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PREVIOUSLY_UNSUBSCRIBED_MESSAGE =
            T.let(
              :PREVIOUSLY_UNSUBSCRIBED_MESSAGE,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PREVIOUSLY_UNSUBSCRIBED_PORTAL =
            T.let(
              :PREVIOUSLY_UNSUBSCRIBED_PORTAL,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          QUARANTINED_ADDRESS =
            T.let(
              :QUARANTINED_ADDRESS,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          QUEUED =
            T.let(
              :QUEUED,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          RECIPIENT_FATIGUE_SUPPRESSED =
            T.let(
              :RECIPIENT_FATIGUE_SUPPRESSED,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          SENT =
            T.let(
              :SENT,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          TEMPLATE_RENDER_EXCEPTION =
            T.let(
              :TEMPLATE_RENDER_EXCEPTION,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          THROTTLED =
            T.let(
              :THROTTLED,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          TOO_MANY_RECIPIENTS =
            T.let(
              :TOO_MANY_RECIPIENTS,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          UBB_GOVERNANCE_MISSING =
            T.let(
              :UBB_GOVERNANCE_MISSING,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          UNCONFIGURED_SENDING_DOMAIN =
            T.let(
              :UNCONFIGURED_SENDING_DOMAIN,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          UNDELIVERABLE =
            T.let(
              :UNDELIVERABLE,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          VALIDATION_FAILED =
            T.let(
              :VALIDATION_FAILED,
              HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
