# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        # @see HubspotSDK::Resources::CRM::Associations::V4#delete
        class V4DeleteParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

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

          # @!method initialize(object_type:, object_id_:, to_object_type:, request_options: {})
          #   @param object_type [String]
          #   @param object_id_ [String]
          #   @param to_object_type [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
