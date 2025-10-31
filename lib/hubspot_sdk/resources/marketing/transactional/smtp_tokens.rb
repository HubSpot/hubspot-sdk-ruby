# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Transactional
        class SmtpTokens
          # Create a SMTP API token.
          #
          # @overload create(campaign_name:, create_contact:, request_options: {})
          #
          # @param campaign_name [String] A name for the campaign tied to the SMTP API token.
          #
          # @param create_contact [Boolean] Indicates whether a contact should be created for email recipients.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::SmtpAPITokenView]
          #
          # @see HubspotSDK::Models::Marketing::Transactional::SmtpTokenCreateParams
          def create(params)
            parsed, options = HubspotSDK::Marketing::Transactional::SmtpTokenCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "marketing/v3/transactional/smtp-tokens",
              body: parsed,
              model: HubspotSDK::Marketing::SmtpAPITokenView,
              options: options
            )
          end

          # Query multiple SMTP API tokens by campaign name or a single token by
          # emailCampaignId.
          #
          # @overload list(after: nil, campaign_name: nil, email_campaign_id: nil, limit: nil, request_options: {})
          #
          # @param after [String] Starting point to get the next set of results.
          #
          # @param campaign_name [String] A name for the campaign tied to the SMTP API token.
          #
          # @param email_campaign_id [String] Identifier assigned to the campaign provided during the token creation.
          #
          # @param limit [Integer] Maximum number of tokens to return.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Marketing::SmtpAPITokenView>]
          #
          # @see HubspotSDK::Models::Marketing::Transactional::SmtpTokenListParams
          def list(params = {})
            parsed, options = HubspotSDK::Marketing::Transactional::SmtpTokenListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "marketing/v3/transactional/smtp-tokens",
              query: parsed.transform_keys(
                campaign_name: "campaignName",
                email_campaign_id: "emailCampaignId"
              ),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Marketing::SmtpAPITokenView,
              options: options
            )
          end

          # Delete a single token by ID.
          #
          # @overload delete(token_id, request_options: {})
          #
          # @param token_id [String] Identifier generated when a token is created.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Marketing::Transactional::SmtpTokenDeleteParams
          def delete(token_id, params = {})
            @client.request(
              method: :delete,
              path: ["marketing/v3/transactional/smtp-tokens/%1$s", token_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Query a single token by ID.
          #
          # @overload get(token_id, request_options: {})
          #
          # @param token_id [String] Identifier generated when a token is created.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::SmtpAPITokenView]
          #
          # @see HubspotSDK::Models::Marketing::Transactional::SmtpTokenGetParams
          def get(token_id, params = {})
            @client.request(
              method: :get,
              path: ["marketing/v3/transactional/smtp-tokens/%1$s", token_id],
              model: HubspotSDK::Marketing::SmtpAPITokenView,
              options: params[:request_options]
            )
          end

          # Allows the creation of a replacement password for a given token. Once the
          # password is successfully reset, the old password for the token will be invalid.
          #
          # @overload reset_password(token_id, request_options: {})
          #
          # @param token_id [String] Identifier generated when a token is created.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::SmtpAPITokenView]
          #
          # @see HubspotSDK::Models::Marketing::Transactional::SmtpTokenResetPasswordParams
          def reset_password(token_id, params = {})
            @client.request(
              method: :post,
              path: ["marketing/v3/transactional/smtp-tokens/%1$s/password-reset", token_id],
              model: HubspotSDK::Marketing::SmtpAPITokenView,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
