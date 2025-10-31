# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ForeignID < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!method initialize(id:, name:, type:)
        #   @param id [String]
        #   @param name [String]
        #   @param type [String]
      end
    end
  end
end
