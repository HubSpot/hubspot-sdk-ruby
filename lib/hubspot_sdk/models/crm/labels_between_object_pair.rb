# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class LabelsBetweenObjectPair < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute from_object_id
        #   The ID of the source object in the association.
        #
        #   @return [String]
        required :from_object_id, String, api_name: :fromObjectId

        # @!attribute from_object_type_id
        #   The type ID of the source object in the association.
        #
        #   @return [String]
        required :from_object_type_id, String, api_name: :fromObjectTypeId

        # @!attribute labels
        #   An array of labels associated with the relationship between the objects.
        #
        #   @return [Array<String>]
        required :labels, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute to_object_id
        #   The ID of the target object in the association.
        #
        #   @return [String]
        required :to_object_id, String, api_name: :toObjectId

        # @!attribute to_object_type_id
        #   The type ID of the target object in the association.
        #
        #   @return [String]
        required :to_object_type_id, String, api_name: :toObjectTypeId

        # @!method initialize(from_object_id:, from_object_type_id:, labels:, to_object_id:, to_object_type_id:)
        #   The relationship descriptors applicable between two object types.
        #
        #   @param from_object_id [String] The ID of the source object in the association.
        #
        #   @param from_object_type_id [String] The type ID of the source object in the association.
        #
        #   @param labels [Array<String>] An array of labels associated with the relationship between the objects.
        #
        #   @param to_object_id [String] The ID of the target object in the association.
        #
        #   @param to_object_type_id [String] The type ID of the target object in the association.
      end
    end
  end
end
