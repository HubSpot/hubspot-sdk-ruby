# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        # @see HubspotSDK::Resources::CRM::Associations::V4#update
        class V4UpdateParams < HubspotSDK::Internal::Type::BaseModel
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

          # @!attribute body
          #
          #   @return [Array<HubspotSDK::Models::AssociationSpec>]
          required :body, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AssociationSpec] }

          # @!method initialize(object_type:, object_id_:, to_object_type:, body:, request_options: {})
          #   @param object_type [String]
          #   @param object_id_ [String]
          #   @param to_object_type [String]
          #   @param body [Array<HubspotSDK::Models::AssociationSpec>]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
