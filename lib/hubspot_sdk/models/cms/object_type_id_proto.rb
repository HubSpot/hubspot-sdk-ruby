# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class ObjectTypeIDProto < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inner_id
        #
        #   @return [Integer]
        required :inner_id, Integer, api_name: :innerId

        # @!attribute meta_type_id
        #
        #   @return [Integer]
        required :meta_type_id, Integer, api_name: :metaTypeId

        # @!method initialize(inner_id:, meta_type_id:)
        #   @param inner_id [Integer]
        #   @param meta_type_id [Integer]
      end
    end
  end
end
