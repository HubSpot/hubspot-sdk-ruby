# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class AssociatedID < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID for the association type.
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #   The type of associations.
        #
        #   @return [String]
        required :type, String

        # @!method initialize(id:, type:)
        #   Contains the id and type of an association
        #
        #   @param id [String] The ID for the association type.
        #
        #   @param type [String] The type of associations.
      end
    end
  end
end
