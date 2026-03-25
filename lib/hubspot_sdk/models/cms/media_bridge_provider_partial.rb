# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class MediaBridgeProviderPartial < HubspotSDK::Internal::Type::BaseModel
        # @!attribute updated_at
        #
        #   @return [Integer]
        required :updated_at, Integer, api_name: :updatedAt

        # @!attribute allow_import_on_disconnect
        #
        #   @return [Boolean, nil]
        optional :allow_import_on_disconnect,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :allowImportOnDisconnect

        # @!attribute module_name
        #
        #   @return [String, nil]
        optional :module_name, String, api_name: :moduleName

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(updated_at:, allow_import_on_disconnect: nil, module_name: nil, name: nil)
        #   @param updated_at [Integer]
        #   @param allow_import_on_disconnect [Boolean]
        #   @param module_name [String]
        #   @param name [String]
      end
    end
  end
end
