# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        module VideoConferencing
          # @see HubspotSDK::Resources::Crm::Extensions::VideoConferencing::Settings#update
          class SettingUpdateParams < HubspotSDK::Models::Crm::Extensions::ExternalSettings
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
