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
              path: "marketing/transactional/2026-03/smtp-tokens",
              body: parsed,
              model: HubspotSDK::Marketing::SmtpAPITokenView,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Transactional::SmtpTokenListParams} for more
          # details.
          #
          # Query multiple SMTP API tokens by campaign name or a single token by
          # emailCampaignId.
          #
          # @overload list(after: nil, campaign_name: nil, email_campaign_id: nil, limit: nil, request_options: {})
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param campaign_name [String]
          #
          # @param email_campaign_id [String]
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Marketing::SmtpAPITokenView>]
          #
          # @see HubspotSDK::Models::Marketing::Transactional::SmtpTokenListParams
          def list(params = {})
            parsed, options = HubspotSDK::Marketing::Transactional::SmtpTokenListParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "marketing/transactional/2026-03/smtp-tokens",
              query: query.transform_keys(
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
          # @param token_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Marketing::Transactional::SmtpTokenDeleteParams
          def delete(token_id, params = {})
            @client.request(
              method: :delete,
              path: ["marketing/transactional/2026-03/smtp-tokens/%1$s", token_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Query a single token by ID.
          #
          # @overload get(token_id, request_options: {})
          #
          # @param token_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::SmtpAPITokenView]
          #
          # @see HubspotSDK::Models::Marketing::Transactional::SmtpTokenGetParams
          def get(token_id, params = {})
            @client.request(
              method: :get,
              path: ["marketing/transactional/2026-03/smtp-tokens/%1$s", token_id],
              model: HubspotSDK::Marketing::SmtpAPITokenView,
              options: params[:request_options]
            )
          end

          # Allows the creation of a replacement password for a given token. Once the
          # password is successfully reset, the old password for the token will be invalid.
          #
          # @overload reset_password(token_id, request_options: {})
          #
          # @param token_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::SmtpAPITokenView]
          #
          # @see HubspotSDK::Models::Marketing::Transactional::SmtpTokenResetPasswordParams
          def reset_password(token_id, params = {})
            @client.request(
              method: :post,
              path: ["marketing/transactional/2026-03/smtp-tokens/%1$s/password-reset", token_id],
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
