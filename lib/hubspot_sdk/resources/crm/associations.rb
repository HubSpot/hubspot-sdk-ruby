# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Associations
        # @return [HubSpotSDK::Resources::Crm::Associations::Batch]
        attr_reader :batch

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Crm::AssociationListParams} for more details.
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Crm::MultiAssociatedObjectWithLabel>]
        #
        # @see HubSpotSDK::Models::Crm::AssociationListParams
        def list(to_object_type, params)
          parsed, options = HubSpotSDK::Crm::AssociationListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
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
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Crm::MultiAssociatedObjectWithLabel,
            options: options
          )
        end

        # @overload delete(to_object_id, object_type:, object_id_:, to_object_type:, request_options: {})
        #
        # @param to_object_id [String]
        # @param object_type [String]
        # @param object_id_ [String]
        # @param to_object_type [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Crm::AssociationDeleteParams
        def delete(to_object_id, params)
          parsed, options = HubSpotSDK::Crm::AssociationDeleteParams.dump_request(params)
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::ReportCreationResponse]
        #
        # @see HubSpotSDK::Models::Crm::AssociationRequestHighUsageReportParams
        def request_high_usage_report(user_id, params = {})
          @client.request(
            method: :post,
            path: ["crm/associations/2026-03/usage/high-usage-report/%1$s", user_id],
            model: HubSpotSDK::Crm::ReportCreationResponse,
            options: params[:request_options]
          )
        end

        # @overload search(object_type, after:, filter_groups:, limit:, properties:, sorts:, query: nil, request_options: {})
        #
        # @param object_type [String]
        #
        # @param after [String] A paging cursor token for retrieving subsequent pages.
        #
        # @param filter_groups [Array<HubSpotSDK::Models::Crm::FilterGroup>] Up to 6 groups of filters defining additional query criteria.
        #
        # @param limit [Integer] The maximum results to return, up to 200 objects.
        #
        # @param properties [Array<String>] A list of property names to include in the response.
        #
        # @param sorts [Array<String>] Specifies sorting order based on object properties.
        #
        # @param query [String] The search query string, up to 3000 characters.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::CollectionResponseWithTotalSimplePublicObject]
        #
        # @see HubSpotSDK::Models::Crm::AssociationSearchParams
        def search(object_type, params)
          parsed, options = HubSpotSDK::Crm::AssociationSearchParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["crm/objects/2026-03/%1$s/search", object_type],
            body: parsed,
            model: HubSpotSDK::Crm::CollectionResponseWithTotalSimplePublicObject,
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
        # @param body [Array<HubSpotSDK::Models::AssociationSpec>] Body param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::LabelsBetweenObjectPair]
        #
        # @see HubSpotSDK::Models::Crm::AssociationUpdateAssociationLabelsParams
        def update_association_labels(to_object_id, params)
          parsed, options = HubSpotSDK::Crm::AssociationUpdateAssociationLabelsParams.dump_request(params)
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
            model: HubSpotSDK::Crm::LabelsBetweenObjectPair,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubSpotSDK::Resources::Crm::Associations::Batch.new(client: client)
        end
      end
    end
  end
end
