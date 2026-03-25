# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Properties
        # @see HubspotSDK::Resources::Crm::Properties::Groups#list
        class GroupListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute object_type
          #
          #   @return [String]
          required :object_type, String

          # @!attribute locale
          #
          #   @return [String, nil]
          optional :locale, String

          # @!method initialize(object_type:, locale: nil, request_options: {})
          #   @param object_type [String]
          #   @param locale [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
