# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class VisitorIdentification
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Conversations::VisitorIdentificationGenerateTokenParams}
        # for more details.
        #
        # Generates a new visitor identification token. This token will be unique every
        # time this endpoint is called, even if called with the same email address. This
        # token is temporary and will expire after 12 hours
        #
        # @overload generate_token(email:, first_name: nil, last_name: nil, request_options: {})
        #
        # @param email [String] The email of the visitor that you wish to identify
        #
        # @param first_name [String] The first name of the visitor that you wish to identify. This value will only be
        #
        # @param last_name [String] The last name of the visitor that you wish to identify. This value will only be
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::IdentificationTokenResponse]
        #
        # @see HubspotSDK::Models::Conversations::VisitorIdentificationGenerateTokenParams
        def generate_token(params)
          parsed, options =
            HubspotSDK::Conversations::VisitorIdentificationGenerateTokenParams.dump_request(params)
          @client.request(
            method: :post,
            path: "visitor-identification/v3/tokens/create",
            body: parsed,
            model: HubspotSDK::Conversations::IdentificationTokenResponse,
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
