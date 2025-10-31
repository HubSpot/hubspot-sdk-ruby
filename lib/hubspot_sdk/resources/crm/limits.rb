# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Limits
        # Returns limits and usage for custom association labels
        #
        # @overload get_association_label_limits(from_object_type_id: nil, to_object_type_id: nil, request_options: {})
        #
        # @param from_object_type_id [String]
        # @param to_object_type_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::CollectionResponseAssociationLabelLimitResponseNoPaging]
        #
        # @see HubspotSDK::Models::CRM::LimitGetAssociationLabelLimitsParams
        def get_association_label_limits(params = {})
          parsed, options = HubspotSDK::CRM::LimitGetAssociationLabelLimitsParams.dump_request(params)
          @client.request(
            method: :get,
            path: "crm/v3/limits/associations/labels",
            query: parsed.transform_keys(
              from_object_type_id: "fromObjectTypeId",
              to_object_type_id: "toObjectTypeId"
            ),
            model: HubspotSDK::CRM::CollectionResponseAssociationLabelLimitResponseNoPaging,
            options: options
          )
        end

        # Returns records approaching or at association limits between two objects
        #
        # @overload get_association_records_limits_by_object_type(to_object_type_id, from_object_type_id:, request_options: {})
        #
        # @param to_object_type_id [String]
        # @param from_object_type_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::AssociationRecordLimitResponse]
        #
        # @see HubspotSDK::Models::CRM::LimitGetAssociationRecordsLimitsByObjectTypeParams
        def get_association_records_limits_by_object_type(to_object_type_id, params)
          parsed, options =
            HubspotSDK::CRM::LimitGetAssociationRecordsLimitsByObjectTypeParams.dump_request(params)
          from_object_type_id =
            parsed.delete(:from_object_type_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["crm/v3/limits/associations/records/%1$s/%2$s", from_object_type_id, to_object_type_id],
            model: HubspotSDK::CRM::AssociationRecordLimitResponse,
            options: options
          )
        end

        # Returns objects with records approaching or at association limits
        #
        # @overload get_association_records_limits_from_objects(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging]
        #
        # @see HubspotSDK::Models::CRM::LimitGetAssociationRecordsLimitsFromObjectsParams
        def get_association_records_limits_from_objects(params = {})
          @client.request(
            method: :get,
            path: "crm/v3/limits/associations/records/from",
            model: HubspotSDK::CRM::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging,
            options: params[:request_options]
          )
        end

        # Returns objects for which the from object has records approaching or at
        # association limits
        #
        # @overload get_association_records_limits_to_objects(from_object_type_id, request_options: {})
        #
        # @param from_object_type_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging]
        #
        # @see HubspotSDK::Models::CRM::LimitGetAssociationRecordsLimitsToObjectsParams
        def get_association_records_limits_to_objects(from_object_type_id, params = {})
          @client.request(
            method: :get,
            path: ["crm/v3/limits/associations/records/%1$s/to", from_object_type_id],
            model: HubspotSDK::CRM::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging,
            options: params[:request_options]
          )
        end

        # Returns overall limit and per object usage for calculated properties
        #
        # @overload get_calculated_property_limits(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::CalculatedPropertyLimitResponse]
        #
        # @see HubspotSDK::Models::CRM::LimitGetCalculatedPropertyLimitsParams
        def get_calculated_property_limits(params = {})
          @client.request(
            method: :get,
            path: "crm/v3/limits/calculated-properties",
            model: HubspotSDK::CRM::CalculatedPropertyLimitResponse,
            options: params[:request_options]
          )
        end

        # Returns limits and usage for custom object schemas
        #
        # @overload get_custom_object_type_limits(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::CustomObjectLimitResponse]
        #
        # @see HubspotSDK::Models::CRM::LimitGetCustomObjectTypeLimitsParams
        def get_custom_object_type_limits(params = {})
          @client.request(
            method: :get,
            path: "crm/v3/limits/custom-object-types",
            model: HubspotSDK::CRM::CustomObjectLimitResponse,
            options: params[:request_options]
          )
        end

        # Returns limits and usage per object for custom properties
        #
        # @overload get_custom_property_limits(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::CustomPropertyLimitResponse]
        #
        # @see HubspotSDK::Models::CRM::LimitGetCustomPropertyLimitsParams
        def get_custom_property_limits(params = {})
          @client.request(
            method: :get,
            path: "crm/v3/limits/custom-properties",
            model: HubspotSDK::CRM::CustomPropertyLimitResponse,
            options: params[:request_options]
          )
        end

        # Returns limits and usage per object for pipelines
        #
        # @overload get_pipeline_limits(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::PipelineLimitResponse]
        #
        # @see HubspotSDK::Models::CRM::LimitGetPipelineLimitsParams
        def get_pipeline_limits(params = {})
          @client.request(
            method: :get,
            path: "crm/v3/limits/pipelines",
            model: HubspotSDK::CRM::PipelineLimitResponse,
            options: params[:request_options]
          )
        end

        # Returns limits and usage per object for records
        #
        # @overload get_record_limits(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::RecordLimitResponse]
        #
        # @see HubspotSDK::Models::CRM::LimitGetRecordLimitsParams
        def get_record_limits(params = {})
          @client.request(
            method: :get,
            path: "crm/v3/limits/records",
            model: HubspotSDK::CRM::RecordLimitResponse,
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
