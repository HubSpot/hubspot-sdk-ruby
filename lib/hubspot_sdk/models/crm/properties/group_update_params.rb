# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Properties
        # @see HubspotSDK::Resources::Crm::Properties::Groups#update
        class GroupUpdateParams < HubspotSDK::Models::PropertyGroupUpdate
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute object_type
          #
          #   @return [String]
          required :object_type, String

          # @!attribute group_name
          #
          #   @return [String]
          required :group_name, String

          # @!method initialize(object_type:, group_name:, request_options: {})
          #   @param object_type [String]
          #   @param group_name [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
