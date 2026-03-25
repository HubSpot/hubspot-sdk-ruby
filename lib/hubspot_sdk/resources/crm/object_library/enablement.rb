# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class ObjectLibrary
        class Enablement
          # @overload get_all(request_options: {})
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::ObjectLibrary::PortalObjectTypeEnablementPublicResponse]
          #
          # @see HubspotSDK::Models::Crm::ObjectLibrary::EnablementGetAllParams
          def get_all(params = {})
            @client.request(
              method: :get,
              path: "crm/object-library/2026-03/enablement",
              model: HubspotSDK::Crm::ObjectLibrary::PortalObjectTypeEnablementPublicResponse,
              options: params[:request_options]
            )
          end

          # @overload get_by_object_type_id(object_type_id, request_options: {})
          #
          # @param object_type_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::ObjectLibrary::ObjectTypeEnablementPublicResponse]
          #
          # @see HubspotSDK::Models::Crm::ObjectLibrary::EnablementGetByObjectTypeIDParams
          def get_by_object_type_id(object_type_id, params = {})
            @client.request(
              method: :get,
              path: ["crm/object-library/2026-03/enablement/%1$s", object_type_id],
              model: HubspotSDK::Crm::ObjectLibrary::ObjectTypeEnablementPublicResponse,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
