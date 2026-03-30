# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ForeignID < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the foreign ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   Name of the foreign ID.
        #
        #   @return [String]
        required :name, String

        # @!attribute type
        #   Type of the foreign ID.
        #
        #   @return [String]
        required :type, String

        # @!method initialize(id:, name:, type:)
        #   @param id [String] Unique identifier for the foreign ID.
        #
        #   @param name [String] Name of the foreign ID.
        #
        #   @param type [String] Type of the foreign ID.
      end
    end
  end
end
