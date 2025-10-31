# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class Endpoints < HubspotSDK::Internal::Type::BaseModel
        # @!attribute discovery
        #
        #   @return [Boolean]
        required :discovery, HubspotSDK::Internal::Type::Boolean

        # @!attribute schemes
        #
        #   @return [Array<String>]
        required :schemes, HubspotSDK::Internal::Type::ArrayOf[String]

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
