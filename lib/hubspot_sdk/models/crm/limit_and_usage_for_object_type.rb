# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class LimitAndUsageForObjectType < HubspotSDK::Internal::Type::BaseModel
        # @!attribute limit
        #   The maximum allowed count for the object type.
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute object_type_id
        #   The unique identifier for the object type.
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute percentage
        #   The percentage of the limit that has been used.
        #
        #   @return [Float]
        required :percentage, Float

        # @!attribute plural_label
        #   The plural label for the object type.
        #
        #   @return [String]
        required :plural_label, String, api_name: :pluralLabel

        # @!attribute singular_label
        #   The singular label for the object type.
        #
        #   @return [String]
        required :singular_label, String, api_name: :singularLabel

        # @!attribute usage
        #   The current usage count for the object type.
        #
        #   @return [Integer]
        required :usage, Integer

        # @!method initialize(limit:, object_type_id:, percentage:, plural_label:, singular_label:, usage:)
        #   @param limit [Integer] The maximum allowed count for the object type.
        #
        #   @param object_type_id [String] The unique identifier for the object type.
        #
        #   @param percentage [Float] The percentage of the limit that has been used.
        #
        #   @param plural_label [String] The plural label for the object type.
        #
        #   @param singular_label [String] The singular label for the object type.
        #
        #   @param usage [Integer] The current usage count for the object type.
      end
    end
  end
end
