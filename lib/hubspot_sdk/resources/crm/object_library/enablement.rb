# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class ObjectLibrary
        class Enablement
          # @overload list(request_options: {})
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::PortalObjectTypeEnablementPublicResponse]
          #
          # @see HubspotSDK::Models::Crm::ObjectLibrary::EnablementListParams
          def list(params = {})
            @client.request(
              method: :get,
              path: "crm/v3/object-library/enablement",
              model: HubspotSDK::Crm::PortalObjectTypeEnablementPublicResponse,
              options: params[:request_options]
            )
          end

          # @overload get(object_type_id, request_options: {})
          #
          # @param object_type_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::ObjectTypeEnablementPublicResponse]
          #
          # @see HubspotSDK::Models::Crm::ObjectLibrary::EnablementGetParams
          def get(object_type_id, params = {})
            @client.request(
              method: :get,
              path: ["crm/v3/object-library/enablement/%1$s", object_type_id],
              model: HubspotSDK::Crm::ObjectTypeEnablementPublicResponse,
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
