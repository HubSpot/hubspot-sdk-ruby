# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      # @see HubSpotSDK::Resources::Conversations::VisitorIdentification#generate_token
      class IdentificationTokenResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute token
        #   An identification token that allows the visitor to be treated as a known
        #   contact.
        #
        #   @return [String]
        required :token, String

        # @!method initialize(token:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Conversations::IdentificationTokenResponse} for more
        #   details.
        #
        #   @param token [String] An identification token that allows the visitor to be treated as a known contact
      end
    end
  end
end
