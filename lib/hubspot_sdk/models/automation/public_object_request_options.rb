# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicObjectRequestOptions < HubspotSDK::Internal::Type::BaseModel
        # @!attribute properties
        #
        #   @return [Array<String>]
        required :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(properties:)
        #   @param properties [Array<String>]
      end
    end
  end
end
