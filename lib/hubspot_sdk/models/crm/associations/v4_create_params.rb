# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        # @see HubspotSDK::Resources::CRM::Associations::V4#create
        class V4CreateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

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

          # @!method initialize(from_object_type:, from_object_id:, to_object_type:, request_options: {})
          #   @param from_object_type [String]
          #   @param from_object_id [String]
          #   @param to_object_type [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
