# frozen_string_literal: true

module HubspotSDK
  module Models
    class AssociationDefinitionEgg < HubspotSDK::Internal::Type::BaseModel
      # @!attribute from_object_type_id
      #
      #   @return [String]
      required :from_object_type_id, String, api_name: :fromObjectTypeId

      # @!attribute to_object_type_id
      #
      #   @return [String]
      required :to_object_type_id, String, api_name: :toObjectTypeId

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(from_object_type_id:, to_object_type_id:, name: nil)
      #   @param from_object_type_id [String]
      #   @param to_object_type_id [String]
      #   @param name [String]
    end
  end
end
