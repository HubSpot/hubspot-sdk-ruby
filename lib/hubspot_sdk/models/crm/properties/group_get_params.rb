# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Properties
        # @see HubSpotSDK::Resources::Crm::Properties::Groups#get
        class GroupGetParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute object_type
          #
          #   @return [String]
          required :object_type, String

          # @!attribute group_name
          #
          #   @return [String]
          required :group_name, String

          # @!attribute locale
          #
          #   @return [String, nil]
          optional :locale, String

          # @!method initialize(object_type:, group_name:, locale: nil, request_options: {})
          #   @param object_type [String]
          #   @param group_name [String]
          #   @param locale [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
