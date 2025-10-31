# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class LabelsBetweenObjectPair < HubspotSDK::Internal::Type::BaseModel
        # @!attribute from_object_id
        #
        #   @return [String]
        required :from_object_id, String, api_name: :fromObjectId

        # @!attribute from_object_type_id
        #
        #   @return [String]
        required :from_object_type_id, String, api_name: :fromObjectTypeId

        # @!attribute labels
        #
        #   @return [Array<String>]
        required :labels, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute to_object_id
        #
        #   @return [String]
        required :to_object_id, String, api_name: :toObjectId

        # @!attribute to_object_type_id
        #
        #   @return [String]
        required :to_object_type_id, String, api_name: :toObjectTypeId

        # @!method initialize(from_object_id:, from_object_type_id:, labels:, to_object_id:, to_object_type_id:)
        #   @param from_object_id [String]
        #   @param from_object_type_id [String]
        #   @param labels [Array<String>]
        #   @param to_object_id [String]
        #   @param to_object_type_id [String]
      end
    end
  end
end
