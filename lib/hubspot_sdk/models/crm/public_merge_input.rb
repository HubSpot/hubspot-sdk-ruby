# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicMergeInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute object_id_to_merge
        #
        #   @return [String]
        required :object_id_to_merge, String, api_name: :objectIdToMerge

        # @!attribute primary_object_id
        #
        #   @return [String]
        required :primary_object_id, String, api_name: :primaryObjectId

        # @!method initialize(object_id_to_merge:, primary_object_id:)
        #   @param object_id_to_merge [String]
        #   @param primary_object_id [String]
      end
    end
  end
end
