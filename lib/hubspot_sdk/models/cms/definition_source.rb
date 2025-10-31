# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class DefinitionSource < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(type:, name: nil)
        #   @param type [String]
        #   @param name [String]
      end
    end
  end
end
