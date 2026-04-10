# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Associations
        # @see HubSpotSDK::Resources::Crm::Associations::Batch#create
        class BatchCreateParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute from_object_type
          #
          #   @return [String]
          required :from_object_type, String

          # @!attribute from_object_id
          #
          #   @return [String]
          required :from_object_id, String

          # @!attribute to_object_type
          #
          #   @return [String]
          required :to_object_type, String

          # @!attribute to_object_id
          #
          #   @return [String]
          required :to_object_id, String

          # @!method initialize(from_object_type:, from_object_id:, to_object_type:, to_object_id:, request_options: {})
          #   @param from_object_type [String]
          #   @param from_object_id [String]
          #   @param to_object_type [String]
          #   @param to_object_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
