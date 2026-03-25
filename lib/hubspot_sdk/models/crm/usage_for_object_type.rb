# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class UsageForObjectType < HubspotSDK::Internal::Type::BaseModel
        # @!attribute object_type_id
        #   The unique identifier for the object type.
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute plural_label
        #   The plural form of the label for the object type.
        #
        #   @return [String]
        required :plural_label, String, api_name: :pluralLabel

        # @!attribute singular_label
        #   The singular form of the label for the object type.
        #
        #   @return [String]
        required :singular_label, String, api_name: :singularLabel

        # @!attribute usage
        #   The number of records used for the object type.
        #
        #   @return [Integer]
        required :usage, Integer

        # @!method initialize(object_type_id:, plural_label:, singular_label:, usage:)
        #   @param object_type_id [String] The unique identifier for the object type.
        #
        #   @param plural_label [String] The plural form of the label for the object type.
        #
        #   @param singular_label [String] The singular form of the label for the object type.
        #
        #   @param usage [Integer] The number of records used for the object type.
      end
    end
  end
end
