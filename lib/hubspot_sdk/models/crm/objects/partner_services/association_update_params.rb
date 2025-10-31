# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        module PartnerServices
          # @see HubspotSDK::Resources::CRM::Objects::PartnerServices::Associations#update
          class AssociationUpdateParams < HubspotSDK::Internal::Type::BaseModel
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!attribute partner_service_id
            #
            #   @return [String]
            required :partner_service_id, String

            # @!attribute to_object_type
            #
            #   @return [String]
            required :to_object_type, String

            # @!attribute to_object_id
            #
            #   @return [String]
            required :to_object_id, String

            # @!method initialize(partner_service_id:, to_object_type:, to_object_id:, request_options: {})
            #   @param partner_service_id [String]
            #   @param to_object_type [String]
            #   @param to_object_id [String]
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
