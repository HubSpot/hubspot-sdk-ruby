# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Conversations
      class VisitorIdentification
        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Conversations::VisitorIdentificationGenerateTokenParams}
        # for more details.
        #
        # Generate an identification token for a website visitor who has been
        # authenticated using your own system. An identification token returned from this
        # API can be used to pass information about your already-authenticated visitor to
        # the chat widget, so that it treats the visitor as a known contact. This allows
        # support agents to recognize and assist the visitor more effectively.
        #
        # @overload generate_token(email:, first_name: nil, last_name: nil, request_options: {})
        #
        # @param email [String] The email of the visitor that you wish to identify
        #
        # @param first_name [String] The first name of the visitor that you wish to identify. This value will only be
        #
        # @param last_name [String] The last name of the visitor that you wish to identify. This value will only be
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Conversations::IdentificationTokenResponse]
        #
        # @see HubSpotSDK::Models::Conversations::VisitorIdentificationGenerateTokenParams
        def generate_token(params)
          parsed, options =
            HubSpotSDK::Conversations::VisitorIdentificationGenerateTokenParams.dump_request(params)
          @client.request(
            method: :post,
            path: "visitor-identification/2026-03/tokens/create",
            body: parsed,
            model: HubSpotSDK::Conversations::IdentificationTokenResponse,
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
