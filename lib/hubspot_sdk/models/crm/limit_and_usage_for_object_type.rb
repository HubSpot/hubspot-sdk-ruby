# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class LimitAndUsageForObjectType < HubspotSDK::Internal::Type::BaseModel
        # @!attribute limit
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute percentage
        #
        #   @return [Float]
        required :percentage, Float

        # @!attribute plural_label
        #
        #   @return [String]
        required :plural_label, String, api_name: :pluralLabel

        # @!attribute singular_label
        #
        #   @return [String]
        required :singular_label, String, api_name: :singularLabel

        # @!attribute usage
        #
        #   @return [Integer]
        required :usage, Integer

        # @!method initialize(limit:, object_type_id:, percentage:, plural_label:, singular_label:, usage:)
        #   @param limit [Integer]
        #   @param object_type_id [String]
        #   @param percentage [Float]
        #   @param plural_label [String]
        #   @param singular_label [String]
        #   @param usage [Integer]
      end
    end
  end
end
