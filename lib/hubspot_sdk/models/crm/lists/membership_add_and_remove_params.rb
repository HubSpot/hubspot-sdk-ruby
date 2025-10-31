# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Lists
        # @see HubspotSDK::Resources::CRM::Lists::Memberships#add_and_remove
        class MembershipAddAndRemoveParams < HubspotSDK::Models::CRM::MembershipChangeRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
