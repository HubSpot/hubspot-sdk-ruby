# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Limits
        # Returns limits and usage for custom association labels
        #
        # @overload get_association_label_limits(from_object_type_id: nil, to_object_type_id: nil, request_options: {})
        #
        # @param from_object_type_id [String]
        # @param to_object_type_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::CollectionResponseAssociationLabelLimitResponseNoPaging]
        #
        # @see HubSpotSDK::Models::Crm::LimitGetAssociationLabelLimitsParams
        def get_association_label_limits(params = {})
          parsed, options = HubSpotSDK::Crm::LimitGetAssociationLabelLimitsParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "crm/limits/2026-03/associations/labels",
            query: query.transform_keys(
              from_object_type_id: "fromObjectTypeId",
              to_object_type_id: "toObjectTypeId"
            ),
            model: HubSpotSDK::Crm::CollectionResponseAssociationLabelLimitResponseNoPaging,
            options: options
          )
        end

        # Returns records approaching or at association limits between two objects
        #
        # @overload get_association_records_limits_by_object_type(to_object_type_id, from_object_type_id:, request_options: {})
        #
        # @param to_object_type_id [String]
        # @param from_object_type_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::AssociationRecordLimitResponse]
        #
        # @see HubSpotSDK::Models::Crm::LimitGetAssociationRecordsLimitsByObjectTypeParams
        def get_association_records_limits_by_object_type(to_object_type_id, params)
          parsed, options =
            HubSpotSDK::Crm::LimitGetAssociationRecordsLimitsByObjectTypeParams.dump_request(params)
          from_object_type_id =
            parsed.delete(:from_object_type_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: [
              "crm/limits/2026-03/associations/records/%1$s/%2$s",
              from_object_type_id,
              to_object_type_id
            ],
            model: HubSpotSDK::Crm::AssociationRecordLimitResponse,
            options: options
          )
        end

        # Returns objects with records approaching or at association limits
        #
        # @overload get_association_records_limits_from_objects(request_options: {})
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging]
        #
        # @see HubSpotSDK::Models::Crm::LimitGetAssociationRecordsLimitsFromObjectsParams
        def get_association_records_limits_from_objects(params = {})
          @client.request(
            method: :get,
            path: "crm/limits/2026-03/associations/records/from",
            model: HubSpotSDK::Crm::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging,
            options: params[:request_options]
          )
        end

        # Returns objects for which the from object has records approaching or at
        # association limits
        #
        # @overload get_association_records_limits_to_objects(from_object_type_id, request_options: {})
        #
        # @param from_object_type_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging]
        #
        # @see HubSpotSDK::Models::Crm::LimitGetAssociationRecordsLimitsToObjectsParams
        def get_association_records_limits_to_objects(from_object_type_id, params = {})
          @client.request(
            method: :get,
            path: ["crm/limits/2026-03/associations/records/%1$s/to", from_object_type_id],
            model: HubSpotSDK::Crm::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging,
            options: params[:request_options]
          )
        end

        # Returns overall limit and per object usage for calculated properties
        #
        # @overload get_calculated_property_limits(request_options: {})
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::CalculatedPropertyLimitResponse]
        #
        # @see HubSpotSDK::Models::Crm::LimitGetCalculatedPropertyLimitsParams
        def get_calculated_property_limits(params = {})
          @client.request(
            method: :get,
            path: "crm/limits/2026-03/calculated-properties",
            model: HubSpotSDK::Crm::CalculatedPropertyLimitResponse,
            options: params[:request_options]
          )
        end

        # Returns limits and usage for custom object schemas
        #
        # @overload get_custom_object_type_limits(request_options: {})
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::CustomObjectLimitResponse]
        #
        # @see HubSpotSDK::Models::Crm::LimitGetCustomObjectTypeLimitsParams
        def get_custom_object_type_limits(params = {})
          @client.request(
            method: :get,
            path: "crm/limits/2026-03/custom-object-types",
            model: HubSpotSDK::Crm::CustomObjectLimitResponse,
            options: params[:request_options]
          )
        end

        # Returns limits and usage per object for custom properties
        #
        # @overload get_custom_property_limits(request_options: {})
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::CustomPropertyLimitResponse]
        #
        # @see HubSpotSDK::Models::Crm::LimitGetCustomPropertyLimitsParams
        def get_custom_property_limits(params = {})
          @client.request(
            method: :get,
            path: "crm/limits/2026-03/custom-properties",
            model: HubSpotSDK::Crm::CustomPropertyLimitResponse,
            options: params[:request_options]
          )
        end

        # Returns limits and usage per object for pipelines
        #
        # @overload get_pipeline_limits(request_options: {})
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::PipelineLimitResponse]
        #
        # @see HubSpotSDK::Models::Crm::LimitGetPipelineLimitsParams
        def get_pipeline_limits(params = {})
          @client.request(
            method: :get,
            path: "crm/limits/2026-03/pipelines",
            model: HubSpotSDK::Crm::PipelineLimitResponse,
            options: params[:request_options]
          )
        end

        # Returns limits and usage per object for records
        #
        # @overload get_record_limits(request_options: {})
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::RecordLimitResponse]
        #
        # @see HubSpotSDK::Models::Crm::LimitGetRecordLimitsParams
        def get_record_limits(params = {})
          @client.request(
            method: :get,
            path: "crm/limits/2026-03/records",
            model: HubSpotSDK::Crm::RecordLimitResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
