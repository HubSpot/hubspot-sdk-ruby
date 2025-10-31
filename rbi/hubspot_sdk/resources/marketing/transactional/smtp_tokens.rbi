# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Transactional
        class SmtpTokens
          # Create a SMTP API token.
          sig do
            params(
              campaign_name: String,
              create_contact: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::SmtpAPITokenView)
          end
          def create(
            # A name for the campaign tied to the SMTP API token.
            campaign_name:,
            # Indicates whether a contact should be created for email recipients.
            create_contact:,
            request_options: {}
          )
          end

          # Query multiple SMTP API tokens by campaign name or a single token by
          # emailCampaignId.
          sig do
            params(
              after: String,
              campaign_name: String,
              email_campaign_id: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[
                HubspotSDK::Marketing::SmtpAPITokenView
              ]
            )
          end
          def list(
            # Starting point to get the next set of results.
            after: nil,
            # A name for the campaign tied to the SMTP API token.
            campaign_name: nil,
            # Identifier assigned to the campaign provided during the token creation.
            email_campaign_id: nil,
            # Maximum number of tokens to return.
            limit: nil,
            request_options: {}
          )
          end

          # Delete a single token by ID.
          sig do
            params(
              token_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # Identifier generated when a token is created.
            token_id,
            request_options: {}
          )
          end

          # Query a single token by ID.
          sig do
            params(
              token_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::SmtpAPITokenView)
          end
          def get(
            # Identifier generated when a token is created.
            token_id,
            request_options: {}
          )
          end

          # Allows the creation of a replacement password for a given token. Once the
          # password is successfully reset, the old password for the token will be invalid.
          sig do
            params(
              token_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::SmtpAPITokenView)
          end
          def reset_password(
            # Identifier generated when a token is created.
            token_id,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
