# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicSingleSendEmail < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicSingleSendEmail,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The recipient of the email.
        sig { returns(String) }
        attr_accessor :to

        # List of email addresses to send as Bcc.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :bcc

        sig { params(bcc: T::Array[String]).void }
        attr_writer :bcc

        # List of email addresses to send as Cc.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :cc

        sig { params(cc: T::Array[String]).void }
        attr_writer :cc

        # The From header for the email.
        sig { returns(T.nilable(String)) }
        attr_reader :from

        sig { params(from: String).void }
        attr_writer :from

        # List of Reply-To header values for the email.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :reply_to

        sig { params(reply_to: T::Array[String]).void }
        attr_writer :reply_to

        # ID for a particular send. No more than one email will be sent per sendId.
        sig { returns(T.nilable(String)) }
        attr_reader :send_id

        sig { params(send_id: String).void }
        attr_writer :send_id

        # A JSON object containing anything you want to override.
        sig do
          params(
            to: String,
            bcc: T::Array[String],
            cc: T::Array[String],
            from: String,
            reply_to: T::Array[String],
            send_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The recipient of the email.
          to:,
          # List of email addresses to send as Bcc.
          bcc: nil,
          # List of email addresses to send as Cc.
          cc: nil,
          # The From header for the email.
          from: nil,
          # List of Reply-To header values for the email.
          reply_to: nil,
          # ID for a particular send. No more than one email will be sent per sendId.
          send_id: nil
        )
        end

        sig do
          override.returns(
            {
              to: String,
              bcc: T::Array[String],
              cc: T::Array[String],
              from: String,
              reply_to: T::Array[String],
              send_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
