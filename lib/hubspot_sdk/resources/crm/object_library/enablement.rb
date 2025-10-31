# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class ObjectLibrary
        class Enablement
          # Returns all objects in the object library and their enablement status
          #
          # @overload list(request_options: {})
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::ObjectLibrary::EnablementListResponse]
          #
          # @see HubspotSDK::Models::CRM::ObjectLibrary::EnablementListParams
          def list(params = {})
            @client.request(
              method: :get,
              path: "crm/v3/object-library/enablement",
              model: HubspotSDK::Models::CRM::ObjectLibrary::EnablementListResponse,
              options: params[:request_options]
            )
          end

          # Returns an object and its enablement status
          #
          # @overload get(object_type_id, request_options: {})
          #
          # @param object_type_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::ObjectLibrary::EnablementGetResponse]
          #
          # @see HubspotSDK::Models::CRM::ObjectLibrary::EnablementGetParams
          def get(object_type_id, params = {})
            @client.request(
              method: :get,
              path: ["crm/v3/object-library/enablement/%1$s", object_type_id],
              model: HubspotSDK::Models::CRM::ObjectLibrary::EnablementGetResponse,
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
