# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class AssociationLabelLimitResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute all_labels
        #
        #   @return [Array<String>]
        required :all_labels, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :allLabels

        # @!attribute from_object_type
        #   Defines an object type.
        #
        #   @return [HubspotSDK::Models::Crm::Objects::ObjectTypeDefinition]
        required :from_object_type,
                 -> { HubspotSDK::Crm::Objects::ObjectTypeDefinition },
                 api_name: :fromObjectType

        # @!attribute limit
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute percentage
        #
        #   @return [Float]
        required :percentage, Float

        # @!attribute to_object_type
        #   Defines an object type.
        #
        #   @return [HubspotSDK::Models::Crm::Objects::ObjectTypeDefinition]
        required :to_object_type,
                 -> {
                   HubspotSDK::Crm::Objects::ObjectTypeDefinition
                 },
                 api_name: :toObjectType

        # @!attribute usage
        #
        #   @return [Integer]
        required :usage, Integer

        # @!method initialize(all_labels:, from_object_type:, limit:, percentage:, to_object_type:, usage:)
        #   @param all_labels [Array<String>]
        #
        #   @param from_object_type [HubspotSDK::Models::Crm::Objects::ObjectTypeDefinition] Defines an object type.
        #
        #   @param limit [Integer]
        #
        #   @param percentage [Float]
        #
        #   @param to_object_type [HubspotSDK::Models::Crm::Objects::ObjectTypeDefinition] Defines an object type.
        #
        #   @param usage [Integer]
      end
    end
  end
end
