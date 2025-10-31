# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Properties
        # @see HubspotSDK::Resources::CRM::Properties::Groups#create
        class GroupCreateParams < HubspotSDK::Models::PropertyGroupCreate
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
