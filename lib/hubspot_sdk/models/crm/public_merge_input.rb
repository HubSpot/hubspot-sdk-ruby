# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicMergeInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute object_id_to_merge
        #   The object ID of the record that the merge will not set as the current value
        #   after the merge.
        #
        #   @return [String]
        required :object_id_to_merge, String, api_name: :objectIdToMerge

        # @!attribute primary_object_id
        #   The object ID of the record that the merge will generally set as the current
        #   value after the merge.
        #
        #   @return [String]
        required :primary_object_id, String, api_name: :primaryObjectId

        # @!method initialize(object_id_to_merge:, primary_object_id:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicMergeInput} for more details.
        #
        #   Input data for merging two records.
        #
        #   @param object_id_to_merge [String] The object ID of the record that the merge will not set as the current value aft
        #
        #   @param primary_object_id [String] The object ID of the record that the merge will generally set as the current val
      end
    end
  end
end
