# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class AppInfo < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the application
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the application
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, name:)
        #   @param id [String] The ID of the application
        #
        #   @param name [String] The name of the application
      end
    end
  end
end
