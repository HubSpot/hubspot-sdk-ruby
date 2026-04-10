# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Associations#delete
      class AssociationDeleteParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute object_type
        #
        #   @return [String]
        required :object_type, String

        # @!attribute object_id_
        #
        #   @return [String]
        required :object_id_, String

        # @!attribute to_object_type
        #
        #   @return [String]
        required :to_object_type, String

        # @!attribute to_object_id
        #
        #   @return [String]
        required :to_object_id, String

        # @!method initialize(object_type:, object_id_:, to_object_type:, to_object_id:, request_options: {})
        #   @param object_type [String]
        #   @param object_id_ [String]
        #   @param to_object_type [String]
        #   @param to_object_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
