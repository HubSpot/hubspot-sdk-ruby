# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        # @see HubspotSDK::Resources::CRM::Objects::Contacts#create
        class ContactCreateParams < HubspotSDK::Models::CRM::SimplePublicObjectInputForCreate
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
