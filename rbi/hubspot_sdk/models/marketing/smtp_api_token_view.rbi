# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class SmtpAPITokenView < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::SmtpAPITokenView,
              HubspotSDK::Internal::AnyHash
            )
          end

        # User name to log into the HubSpot SMTP server.
        sig { returns(String) }
        attr_accessor :id

        # A name for the campaign tied to the token.
        sig { returns(String) }
        attr_accessor :campaign_name

        # Indicates whether a contact should be created for email recipients.
        sig { returns(T::Boolean) }
        attr_accessor :create_contact

        # Timestamp generated when a token is created.
        sig { returns(Time) }
        attr_accessor :created_at

        # Email address of the user that sent the token creation request.
        sig { returns(String) }
        attr_accessor :created_by

        # Identifier assigned to the campaign provided in the token creation request.
        sig { returns(String) }
        attr_accessor :email_campaign_id

        # Password used to log into the HubSpot SMTP server.
        sig { returns(T.nilable(String)) }
        attr_reader :password

        sig { params(password: String).void }
        attr_writer :password

        # A SMTP API token provides both an ID and password that can be used to send email
        # through the HubSpot SMTP API.
        sig do
          params(
            id: String,
            campaign_name: String,
            create_contact: T::Boolean,
            created_at: Time,
            created_by: String,
            email_campaign_id: String,
            password: String
          ).returns(T.attached_class)
        end
        def self.new(
          # User name to log into the HubSpot SMTP server.
          id:,
          # A name for the campaign tied to the token.
          campaign_name:,
          # Indicates whether a contact should be created for email recipients.
          create_contact:,
          # Timestamp generated when a token is created.
          created_at:,
          # Email address of the user that sent the token creation request.
          created_by:,
          # Identifier assigned to the campaign provided in the token creation request.
          email_campaign_id:,
          # Password used to log into the HubSpot SMTP server.
          password: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              campaign_name: String,
              create_contact: T::Boolean,
              created_at: Time,
              created_by: String,
              email_campaign_id: String,
              password: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
