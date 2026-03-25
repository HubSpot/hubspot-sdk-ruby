# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::MediaBridge#register_app_name
      class MediaBridgeProviderRegistrationResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer, api_name: :appId

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!method initialize(app_id:, name:)
        #   @param app_id [Integer]
        #   @param name [String]
      end
    end
  end
end
