# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class DefinitionSource < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::DefinitionSource::Type]
        required :type, enum: -> { HubspotSDK::Cms::DefinitionSource::Type }

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(type:, name: nil)
        #   @param type [Symbol, HubspotSDK::Models::Cms::DefinitionSource::Type]
        #   @param name [String]

        # @see HubspotSDK::Models::Cms::DefinitionSource#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

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
