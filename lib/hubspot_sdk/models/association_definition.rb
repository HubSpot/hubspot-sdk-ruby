# frozen_string_literal: true

module HubspotSDK
  module Models
    class AssociationDefinition < HubspotSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique ID of the associated object (e.g., a contact ID).
      #
      #   @return [String]
      required :id, String

      # @!attribute from_object_type_id
      #   The ID of the source object type (e.g., 0-1 for contacts).
      #
      #   @return [String]
      required :from_object_type_id, String, api_name: :fromObjectTypeId

      # @!attribute to_object_type_id
      #   The ID of the destination object type (e.g., 0-3 for deals).
      #
      #   @return [String]
      required :to_object_type_id, String, api_name: :toObjectTypeId

      # @!attribute created_at
      #   The timestamp when the association was created, in ISO 8601 format.
      #
      #   @return [Time, nil]
      optional :created_at, Time, api_name: :createdAt

      # @!attribute name
      #   For labeled association types, the internal name of the association.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute updated_at
      #   The timestamp when the last update was made to an association, in ISO 8601
      #   format.
      #
      #   @return [Time, nil]
      optional :updated_at, Time, api_name: :updatedAt

      # @!method initialize(id:, from_object_type_id:, to_object_type_id:, created_at: nil, name: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {HubspotSDK::Models::AssociationDefinition} for more details.
      #
      #   The definition of an association
      #
      #   @param id [String] The unique ID of the associated object (e.g., a contact ID).
      #
      #   @param from_object_type_id [String] The ID of the source object type (e.g., 0-1 for contacts).
      #
      #   @param to_object_type_id [String] The ID of the destination object type (e.g., 0-3 for deals).
      #
      #   @param created_at [Time] The timestamp when the association was created, in ISO 8601 format.
      #
      #   @param name [String] For labeled association types, the internal name of the association.
      #
      #   @param updated_at [Time] The timestamp when the last update was made to an association, in ISO 8601 forma
    end
  end
end
