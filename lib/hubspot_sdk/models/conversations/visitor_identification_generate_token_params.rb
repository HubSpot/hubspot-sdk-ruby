# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      # @see HubSpotSDK::Resources::Conversations::VisitorIdentification#generate_token
      class VisitorIdentificationGenerateTokenParams < HubSpotSDK::Models::Conversations::IdentificationTokenGenerationRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
