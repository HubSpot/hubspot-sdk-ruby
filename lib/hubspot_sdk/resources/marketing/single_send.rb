# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class SingleSend
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::SingleSendSendParams} for more details.
        #
        # Send a template email to a specific recipient.
        #
        # @overload send_(email_id:, message:, contact_properties: nil, custom_properties: nil, request_options: {})
        #
        # @param email_id [Integer] The content ID for the email, which can be found in email tool UI.
        #
        # @param message [HubspotSDK::Models::Marketing::PublicSingleSendEmail] A JSON object containing anything you want to override.
        #
        # @param contact_properties [Hash{Symbol=>String}] The contactProperties field is a map of contact property values. Each contact pr
        #
        # @param custom_properties [Hash{Symbol=>Object}] The customProperties field is a map of property values. Each property value cont
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::EmailSendStatusView]
        #
        # @see HubspotSDK::Models::Marketing::SingleSendSendParams
        def send_(params)
          parsed, options = HubspotSDK::Marketing::SingleSendSendParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/v4/email/single-send",
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
