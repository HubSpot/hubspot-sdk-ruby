# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class MediaBridgeProviderPartial < HubspotSDK::Internal::Type::BaseModel
        # @!attribute updated_at
        #
        #   @return [Integer]
        required :updated_at, Integer, api_name: :updatedAt

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(updated_at:, name: nil)
        #   @param updated_at [Integer]
        #   @param name [String]
      end
    end
  end
end
