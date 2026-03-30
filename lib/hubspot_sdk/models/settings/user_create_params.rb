# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      # @see HubspotSDK::Resources::Settings::Users#create
      class UserCreateParams < HubspotSDK::Models::Settings::UserProvisionRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
