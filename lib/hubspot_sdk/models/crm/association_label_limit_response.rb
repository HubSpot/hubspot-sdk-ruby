# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class AssociationLabelLimitResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute all_labels
        #   A list of all association labels.
        #
        #   @return [Array<String>]
        required :all_labels, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :allLabels

        # @!attribute from_object_type
        #
        #   @return [HubspotSDK::Models::Crm::ObjectTypeDefinition]
        required :from_object_type, -> { HubspotSDK::Crm::ObjectTypeDefinition }, api_name: :fromObjectType

        # @!attribute limit
        #   The maximum number of association labels allowed.
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute percentage
        #   The percentage of the association label limit that has been used.
        #
        #   @return [Float]
        required :percentage, Float

        # @!attribute to_object_type
        #
        #   @return [HubspotSDK::Models::Crm::ObjectTypeDefinition]
        required :to_object_type, -> { HubspotSDK::Crm::ObjectTypeDefinition }, api_name: :toObjectType

        # @!attribute usage
        #   The current number of association labels used.
        #
        #   @return [Integer]
        required :usage, Integer

        # @!method initialize(all_labels:, from_object_type:, limit:, percentage:, to_object_type:, usage:)
        #   @param all_labels [Array<String>] A list of all association labels.
        #
        #   @param from_object_type [HubspotSDK::Models::Crm::ObjectTypeDefinition]
        #
        #   @param limit [Integer] The maximum number of association labels allowed.
        #
        #   @param percentage [Float] The percentage of the association label limit that has been used.
        #
        #   @param to_object_type [HubspotSDK::Models::Crm::ObjectTypeDefinition]
        #
        #   @param usage [Integer] The current number of association labels used.
      end
    end
  end
end
