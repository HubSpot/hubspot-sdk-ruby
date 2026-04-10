# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicObjectRequestOptions < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute properties
        #
        #   @return [Array<String>]
        required :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(properties:)
        #   @param properties [Array<String>]
      end
    end
  end
end
