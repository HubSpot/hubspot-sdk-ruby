# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::VisitorIdentification#generate_token
      class IdentificationTokenResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute token
        #   An identification token that allows the visitor to be treated as a known
        #   contact.
        #
        #   @return [String]
        required :token, String

        # @!method initialize(token:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Conversations::IdentificationTokenResponse} for more
        #   details.
        #
        #   @param token [String] An identification token that allows the visitor to be treated as a known contact
      end
    end
  end
end
