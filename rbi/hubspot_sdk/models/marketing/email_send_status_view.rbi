# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EmailSendStatusView < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EmailSendStatusView,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Status of the send request.
        sig do
          returns(
            HubspotSDK::Marketing::EmailSendStatusView::Status::TaggedSymbol
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

        # The ID of a send event.
        sig { returns(T.nilable(HubspotSDK::Marketing::EventIDView)) }
        attr_reader :event_id

        sig do
          params(event_id: HubspotSDK::Marketing::EventIDView::OrHash).void
        end
        attr_writer :event_id

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
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          )
        end
        attr_reader :send_result

        sig do
          params(
            send_result:
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::OrSymbol
          ).void
        end
        attr_writer :send_result

        # Time when the send began processing.
        sig { returns(T.nilable(Time)) }
        attr_reader :started_at

        sig { params(started_at: Time).void }
        attr_writer :started_at

        # Describes the status of an email send request.
        sig do
          params(
            status:
              HubspotSDK::Marketing::EmailSendStatusView::Status::OrSymbol,
            status_id: String,
            completed_at: Time,
            event_id: HubspotSDK::Marketing::EventIDView::OrHash,
            message: String,
            requested_at: Time,
            send_result:
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::OrSymbol,
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
          # The ID of a send event.
          event_id: nil,
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
                HubspotSDK::Marketing::EmailSendStatusView::Status::TaggedSymbol,
              status_id: String,
              completed_at: Time,
              event_id: HubspotSDK::Marketing::EventIDView,
              message: String,
              requested_at: Time,
              send_result:
                HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol,
              started_at: Time
            }
          )
        end
        def to_hash
        end

        # Status of the send request.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Marketing::EmailSendStatusView::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Marketing::EmailSendStatusView::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Marketing::EmailSendStatusView::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Marketing::EmailSendStatusView::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Marketing::EmailSendStatusView::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::EmailSendStatusView::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Result of the send.
        module SendResult
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::EmailSendStatusView::SendResult
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADDRESS_LIST_BOMBED =
            T.let(
              :ADDRESS_LIST_BOMBED,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          ADDRESS_ONLY_ACCEPTED_ON_PROD =
            T.let(
              :ADDRESS_ONLY_ACCEPTED_ON_PROD,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          ADDRESS_OPTED_OUT =
            T.let(
              :ADDRESS_OPTED_OUT,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          BLOCKED_ADDRESS =
            T.let(
              :BLOCKED_ADDRESS,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          BLOCKED_DOMAIN =
            T.let(
              :BLOCKED_DOMAIN,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          CAMPAIGN_CANCELLED =
            T.let(
              :CAMPAIGN_CANCELLED,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          CANCELLED_ABUSE =
            T.let(
              :CANCELLED_ABUSE,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          CORRUPT_INPUT =
            T.let(
              :CORRUPT_INPUT,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          EMAIL_DISABLED =
            T.let(
              :EMAIL_DISABLED,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          EMAIL_UNCONFIRMED =
            T.let(
              :EMAIL_UNCONFIRMED,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          GDPR_DOI_ENABLED =
            T.let(
              :GDPR_DOI_ENABLED,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          GRAYMAIL_SUPPRESSED =
            T.let(
              :GRAYMAIL_SUPPRESSED,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          HUBL_LIMIT_EXCEEDED =
            T.let(
              :HUBL_LIMIT_EXCEEDED,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          IDEMPOTENT_FAIL =
            T.let(
              :IDEMPOTENT_FAIL,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          IDEMPOTENT_IGNORE =
            T.let(
              :IDEMPOTENT_IGNORE,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          INVALID_FROM_ADDRESS =
            T.let(
              :INVALID_FROM_ADDRESS,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          INVALID_TO_ADDRESS =
            T.let(
              :INVALID_TO_ADDRESS,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          LOW_CONTACT_QUALITY_SCORE =
            T.let(
              :LOW_CONTACT_QUALITY_SCORE,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          MISSING_CONTENT =
            T.let(
              :MISSING_CONTENT,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          MISSING_REQUIRED_PARAMETER =
            T.let(
              :MISSING_REQUIRED_PARAMETER,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          MISSING_TEMPLATE_PROPERTIES =
            T.let(
              :MISSING_TEMPLATE_PROPERTIES,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          MTA_IGNORE =
            T.let(
              :MTA_IGNORE,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          NON_MARKETABLE_CONTACT =
            T.let(
              :NON_MARKETABLE_CONTACT,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PORTAL_AUTHENTICATION_FAILURE =
            T.let(
              :PORTAL_AUTHENTICATION_FAILURE,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PORTAL_EXPIRED =
            T.let(
              :PORTAL_EXPIRED,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PORTAL_MISSING_MARKETING_SCOPE =
            T.let(
              :PORTAL_MISSING_MARKETING_SCOPE,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PORTAL_NOT_AUTHORIZED_FOR_APPLICATION =
            T.let(
              :PORTAL_NOT_AUTHORIZED_FOR_APPLICATION,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PORTAL_OVER_LIMIT =
            T.let(
              :PORTAL_OVER_LIMIT,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PORTAL_SUSPENDED =
            T.let(
              :PORTAL_SUSPENDED,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PREVIOUS_SPAM =
            T.let(
              :PREVIOUS_SPAM,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PREVIOUSLY_BOUNCED =
            T.let(
              :PREVIOUSLY_BOUNCED,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PREVIOUSLY_UNSUBSCRIBED_BRAND =
            T.let(
              :PREVIOUSLY_UNSUBSCRIBED_BRAND,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PREVIOUSLY_UNSUBSCRIBED_BUSINESS_UNIT =
            T.let(
              :PREVIOUSLY_UNSUBSCRIBED_BUSINESS_UNIT,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PREVIOUSLY_UNSUBSCRIBED_MESSAGE =
            T.let(
              :PREVIOUSLY_UNSUBSCRIBED_MESSAGE,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          PREVIOUSLY_UNSUBSCRIBED_PORTAL =
            T.let(
              :PREVIOUSLY_UNSUBSCRIBED_PORTAL,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          QUARANTINED_ADDRESS =
            T.let(
              :QUARANTINED_ADDRESS,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          QUEUED =
            T.let(
              :QUEUED,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          RECIPIENT_FATIGUE_SUPPRESSED =
            T.let(
              :RECIPIENT_FATIGUE_SUPPRESSED,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          SENT =
            T.let(
              :SENT,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          TEMPLATE_RENDER_EXCEPTION =
            T.let(
              :TEMPLATE_RENDER_EXCEPTION,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          THROTTLED =
            T.let(
              :THROTTLED,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          TOO_MANY_RECIPIENTS =
            T.let(
              :TOO_MANY_RECIPIENTS,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          UNCONFIGURED_SENDING_DOMAIN =
            T.let(
              :UNCONFIGURED_SENDING_DOMAIN,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          UNDELIVERABLE =
            T.let(
              :UNDELIVERABLE,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )
          VALIDATION_FAILED =
            T.let(
              :VALIDATION_FAILED,
              HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::EmailSendStatusView::SendResult::TaggedSymbol
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
