# typed: strong

module HubSpotSDK
  module Resources
    class Marketing
      class Transactional
        class SmtpTokens
          # Create a SMTP API token.
          sig do
            params(
              campaign_name: String,
              create_contact: T::Boolean,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Marketing::SmtpAPITokenView)
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
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::Internal::Page[
                HubSpotSDK::Marketing::SmtpAPITokenView
              ]
            )
          end
          def list(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            campaign_name: nil,
            email_campaign_id: nil,
            # The maximum number of results to display per page.
            limit: nil,
            request_options: {}
          )
          end

          # Delete a single token by ID.
          sig do
            params(
              token_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(token_id, request_options: {})
          end

          # Query a single token by ID.
          sig do
            params(
              token_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Marketing::SmtpAPITokenView)
          end
          def get(token_id, request_options: {})
          end

          # Allows the creation of a replacement password for a given token. Once the
          # password is successfully reset, the old password for the token will be invalid.
          sig do
            params(
              token_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Marketing::SmtpAPITokenView)
          end
          def reset_password(token_id, request_options: {})
          end

          # @api private
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
