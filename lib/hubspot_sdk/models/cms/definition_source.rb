# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class DefinitionSource < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::DefinitionSource::Type]
        required :type, enum: -> { HubSpotSDK::Cms::DefinitionSource::Type }

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(type:, name: nil)
        #   @param type [Symbol, HubSpotSDK::Models::Cms::DefinitionSource::Type]
        #   @param name [String]

        # @see HubSpotSDK::Models::Cms::DefinitionSource#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          GLOBAL = :GLOBAL
          HAVEN_BRANCH = :HAVEN_BRANCH
          OBJECT_TYPE = :OBJECT_TYPE
          PORTAL = :PORTAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
