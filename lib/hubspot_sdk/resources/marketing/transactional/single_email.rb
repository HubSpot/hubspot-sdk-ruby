# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Marketing
      class Transactional
        class SingleEmail
          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Marketing::Transactional::SingleEmailSendParams} for more
          # details.
          #
          # Asynchronously send a transactional email. Returns the status of the email send
          # with a statusId that can be used to continuously query for the status using the
          # Email Send Status API.
          #
          # @overload send_(contact_properties:, custom_properties:, email_id:, message:, request_options: {})
          #
          # @param contact_properties [Hash{Symbol=>String}] The contactProperties field is a map of contact property values. Each contact pr
          #
          # @param custom_properties [Hash{Symbol=>Object}] The customProperties field is a map of property values. Each property value cont
          #
          # @param email_id [Integer] The content ID for the email, which can be found in email tool UI.
          #
          # @param message [HubSpotSDK::Models::Marketing::PublicSingleSendEmail]
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Marketing::EmailSendStatusView]
          #
          # @see HubSpotSDK::Models::Marketing::Transactional::SingleEmailSendParams
          def send_(params)
            parsed, options = HubSpotSDK::Marketing::Transactional::SingleEmailSendParams.dump_request(params)
            @client.request(
              method: :post,
              path: "marketing/transactional/2026-03/single-email/send",
              body: parsed,
              model: HubSpotSDK::Marketing::EmailSendStatusView,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
