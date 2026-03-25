# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class ObjectTypeNearOrAtAssociationLimit < HubspotSDK::Internal::Type::BaseModel
        # @!attribute has_records_at_limit
        #   Indicates whether there are records that have reached the association limit.
        #
        #   @return [Boolean]
        required :has_records_at_limit, HubspotSDK::Internal::Type::Boolean, api_name: :hasRecordsAtLimit

        # @!attribute has_records_near_limit
        #   Indicates whether there are records that are approaching the association limit.
        #
        #   @return [Boolean]
        required :has_records_near_limit, HubspotSDK::Internal::Type::Boolean, api_name: :hasRecordsNearLimit

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

        # @!method initialize(has_records_at_limit:, has_records_near_limit:, object_type_id:, plural_label:, singular_label:)
        #   @param has_records_at_limit [Boolean] Indicates whether there are records that have reached the association limit.
        #
        #   @param has_records_near_limit [Boolean] Indicates whether there are records that are approaching the association limit.
        #
        #   @param object_type_id [String] The unique identifier for the object type.
        #
        #   @param plural_label [String] The plural form of the label for the object type.
        #
        #   @param singular_label [String] The singular form of the label for the object type.
      end
    end
  end
end
