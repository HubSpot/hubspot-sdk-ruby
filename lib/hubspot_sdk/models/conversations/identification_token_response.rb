# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::VisitorIdentification#generate_token
      class IdentificationTokenResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute token
        #
        #   @return [String]
        required :token, String

        # @!method initialize(token:)
        #   The identification token to be passed to the Conversations JS API to identify
        #   the visitor
        #
        #   @param token [String]
      end
    end
  end
end
