# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Properties
        # @see HubspotSDK::Resources::CRM::Properties::Groups#update
        class GroupUpdateParams < HubspotSDK::Models::PropertyGroupUpdate
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute object_type
          #
          #   @return [String]
          required :object_type, String

          # @!method initialize(object_type:, request_options: {})
          #   @param object_type [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
