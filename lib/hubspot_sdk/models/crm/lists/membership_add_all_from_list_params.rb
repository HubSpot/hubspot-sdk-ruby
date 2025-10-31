# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Lists
        # @see HubspotSDK::Resources::CRM::Lists::Memberships#add_all_from_list
        class MembershipAddAllFromListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute list_id
          #
          #   @return [String]
          required :list_id, String

          # @!method initialize(list_id:, request_options: {})
          #   @param list_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
