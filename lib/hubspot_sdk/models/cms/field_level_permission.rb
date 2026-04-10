# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class FieldLevelPermission < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute access_level
        #
        #   @return [String]
        required :access_level, String, api_name: :accessLevel

        # @!method initialize(access_level:)
        #   @param access_level [String]
      end
    end
  end
end
