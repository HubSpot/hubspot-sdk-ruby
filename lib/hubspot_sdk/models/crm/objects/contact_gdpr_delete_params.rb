# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        # @see HubSpotSDK::Resources::Crm::Objects::Contacts#gdpr_delete
        class ContactGdprDeleteParams < HubSpotSDK::Models::Crm::Objects::PublicGdprDeleteInput
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
