# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class PublicSingleSendEmail < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::PublicSingleSendEmail,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # List of email addresses to send as Bcc.
        sig { returns(T::Array[String]) }
        attr_accessor :bcc

        # List of email addresses to send as Cc.
        sig { returns(T::Array[String]) }
        attr_accessor :cc

        # List of Reply-To header values for the email.
        sig { returns(T::Array[String]) }
        attr_accessor :reply_to

        # The From header for the email.
        sig { returns(T.nilable(String)) }
        attr_reader :from

        sig { params(from: String).void }
        attr_writer :from

        # ID for a particular send. No more than one email will be sent per sendId.
        sig { returns(T.nilable(String)) }
        attr_reader :send_id

        sig { params(send_id: String).void }
        attr_writer :send_id

        # The recipient of the email.
        sig { returns(T.nilable(String)) }
        attr_reader :to

        sig { params(to: String).void }
        attr_writer :to

        sig do
          params(
            bcc: T::Array[String],
            cc: T::Array[String],
            reply_to: T::Array[String],
            from: String,
            send_id: String,
            to: String
          ).returns(T.attached_class)
        end
        def self.new(
          # List of email addresses to send as Bcc.
          bcc:,
          # List of email addresses to send as Cc.
          cc:,
          # List of Reply-To header values for the email.
          reply_to:,
          # The From header for the email.
          from: nil,
          # ID for a particular send. No more than one email will be sent per sendId.
          send_id: nil,
          # The recipient of the email.
          to: nil
        )
        end

        sig do
          override.returns(
            {
              bcc: T::Array[String],
              cc: T::Array[String],
              reply_to: T::Array[String],
              from: String,
              send_id: String,
              to: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
