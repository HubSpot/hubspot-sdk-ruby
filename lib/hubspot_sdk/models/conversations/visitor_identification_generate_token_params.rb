# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::VisitorIdentification#generate_token
      class VisitorIdentificationGenerateTokenParams < HubspotSDK::Models::Conversations::IdentificationTokenGenerationRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
