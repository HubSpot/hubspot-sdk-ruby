# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class Endpoints < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute discovery
        #
        #   @return [Boolean]
        required :discovery, HubSpotSDK::Internal::Type::Boolean

        # @!attribute schemes
        #
        #   @return [Array<String>]
        required :schemes, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!method initialize(discovery:, schemes:, url:)
        #   @param discovery [Boolean]
        #   @param schemes [Array<String>]
        #   @param url [String]
      end
    end
  end
end
