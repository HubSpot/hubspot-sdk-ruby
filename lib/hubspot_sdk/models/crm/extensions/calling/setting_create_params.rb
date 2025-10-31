# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        module Calling
          # @see HubspotSDK::Resources::CRM::Extensions::Calling::Settings#create
          class SettingCreateParams < HubspotSDK::Models::CRM::Extensions::SettingsRequest
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
