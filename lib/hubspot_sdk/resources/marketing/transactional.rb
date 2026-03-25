# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Transactional
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::TransactionalSendParams} for more details.
        #
        # @overload send_(contact_properties:, custom_properties:, email_id:, message:, request_options: {})
        #
        # @param contact_properties [Hash{Symbol=>String}] The contactProperties field is a map of contact property values. Each contact pr
        #
        # @param custom_properties [Hash{Symbol=>Object}] The customProperties field is a map of property values. Each property value cont
        #
        # @param email_id [Integer] The content ID for the transactional email, which can be found in email tool UI.
        #
        # @param message [HubspotSDK::Models::Marketing::PublicSingleSendEmail]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::EmailSendStatusView]
        #
        # @see HubspotSDK::Models::Marketing::TransactionalSendParams
        def send_(params)
          parsed, options = HubspotSDK::Marketing::TransactionalSendParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/transactional/2026-03/single-email/send",
            body: parsed,
            model: HubspotSDK::Marketing::EmailSendStatusView,
            options: options
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
