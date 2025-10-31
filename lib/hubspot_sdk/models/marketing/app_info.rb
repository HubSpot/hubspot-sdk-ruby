# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class AppInfo < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, name:)
        #   @param id [String]
        #   @param name [String]
      end
    end
  end
end
