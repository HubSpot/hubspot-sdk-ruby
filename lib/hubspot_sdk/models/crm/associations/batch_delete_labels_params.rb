# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Associations
        # @see HubSpotSDK::Resources::Crm::Associations::Batch#delete_labels
        class BatchDeleteLabelsParams < HubSpotSDK::Models::Crm::BatchInputPublicAssociationMultiPost
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute from_object_type
          #
          #   @return [String]
          required :from_object_type, String

          # @!attribute to_object_type
          #
          #   @return [String]
          required :to_object_type, String

          # @!method initialize(from_object_type:, to_object_type:, request_options: {})
          #   @param from_object_type [String]
          #   @param to_object_type [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
