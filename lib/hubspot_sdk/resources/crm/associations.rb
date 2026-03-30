# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Associations
        # @return [HubspotSDK::Resources::Crm::Associations::Batch]
        attr_reader :batch

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::AssociationListParams} for more details.
        #
        # Retrieve all associations between a specific record and an object type. Limit
        # 500 per call.
        #
        # @overload list(to_object_type, object_type:, object_id_:, after: nil, limit: nil, request_options: {})
        #
        # @param to_object_type [String] Path param
        #
        # @param object_type [String] Path param
        #
        # @param object_id_ [String] Path param
        #
        # @param after [String] Query param: The paging cursor token of the last successfully read resource will
        #
        # @param limit [Integer] Query param: The maximum number of results to display per page.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::MultiAssociatedObjectWithLabel>]
        #
        # @see HubspotSDK::Models::Crm::AssociationListParams
        def list(to_object_type, params)
          parsed, options = HubspotSDK::Crm::AssociationListParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          object_id_ =
            parsed.delete(:object_id_) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: [
              "crm/objects/2026-03/%1$s/%2$s/associations/%3$s",
              object_type,
              object_id_,
              to_object_type
            ],
            query: query,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Crm::MultiAssociatedObjectWithLabel,
            options: options
          )
        end

        # @overload delete(to_object_id, object_type:, object_id_:, to_object_type:, request_options: {})
        #
        # @param to_object_id [String]
        # @param object_type [String]
        # @param object_id_ [String]
        # @param to_object_type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::AssociationDeleteParams
        def delete(to_object_id, params)
          parsed, options = HubspotSDK::Crm::AssociationDeleteParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          object_id_ =
            parsed.delete(:object_id_) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          to_object_type =
            parsed.delete(:to_object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: [
              "crm/objects/2026-03/%1$s/%2$s/associations/%3$s/%4$s",
              object_type,
              object_id_,
              to_object_type,
              to_object_id
            ],
            model: NilClass,
            options: options
          )
        end

        # Requests a report of all objects in the portal which have a high usage of
        # associations
        #
        # @overload request_high_usage_report(user_id, request_options: {})
        #
        # @param user_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::ReportCreationResponse]
        #
        # @see HubspotSDK::Models::Crm::AssociationRequestHighUsageReportParams
        def request_high_usage_report(user_id, params = {})
          @client.request(
            method: :post,
            path: ["crm/associations/2026-03/usage/high-usage-report/%1$s", user_id],
            model: HubspotSDK::Crm::ReportCreationResponse,
            options: params[:request_options]
          )
        end

        # @overload search(object_type, after:, filter_groups:, limit:, properties:, sorts:, query: nil, request_options: {})
        #
        # @param object_type [String]
        #
        # @param after [String] A paging cursor token for retrieving subsequent pages.
        #
        # @param filter_groups [Array<HubspotSDK::Models::Crm::FilterGroup>] Up to 6 groups of filters defining additional query criteria.
        #
        # @param limit [Integer] The maximum results to return, up to 200 objects.
        #
        # @param properties [Array<String>] A list of property names to include in the response.
        #
        # @param sorts [Array<String>] Specifies sorting order based on object properties.
        #
        # @param query [String] The search query string, up to 3000 characters.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::CollectionResponseWithTotalSimplePublicObject]
        #
        # @see HubspotSDK::Models::Crm::AssociationSearchParams
        def search(object_type, params)
          parsed, options = HubspotSDK::Crm::AssociationSearchParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["crm/objects/2026-03/%1$s/search", object_type],
            body: parsed,
            model: HubspotSDK::Crm::CollectionResponseWithTotalSimplePublicObject,
            options: options
          )
        end

        # @overload update_association_labels(to_object_id, object_type:, object_id_:, to_object_type:, body:, request_options: {})
        #
        # @param to_object_id [String] Path param
        #
        # @param object_type [String] Path param
        #
        # @param object_id_ [String] Path param
        #
        # @param to_object_type [String] Path param
        #
        # @param body [Array<HubspotSDK::Models::AssociationSpec>] Body param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::LabelsBetweenObjectPair]
        #
        # @see HubspotSDK::Models::Crm::AssociationUpdateAssociationLabelsParams
        def update_association_labels(to_object_id, params)
          parsed, options = HubspotSDK::Crm::AssociationUpdateAssociationLabelsParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          object_id_ =
            parsed.delete(:object_id_) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          to_object_type =
            parsed.delete(:to_object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: [
              "crm/objects/2026-03/%1$s/%2$s/associations/%3$s/%4$s",
              object_type,
              object_id_,
              to_object_type,
              to_object_id
            ],
            body: parsed[:body],
            model: HubspotSDK::Crm::LabelsBetweenObjectPair,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubspotSDK::Resources::Crm::Associations::Batch.new(client: client)
        end
      end
    end
  end
end
