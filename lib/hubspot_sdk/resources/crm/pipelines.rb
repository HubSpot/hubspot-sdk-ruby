# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Pipelines
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::PipelineCreateParams} for more details.
        #
        # Create a pipeline stage
        #
        # @overload create(pipeline_id, object_type:, display_order:, label:, metadata:, stage_id: nil, request_options: {})
        #
        # @param pipeline_id [String] Path param
        #
        # @param object_type [String] Path param
        #
        # @param display_order [Integer] Body param: The order for displaying this pipeline stage. If two pipeline stages
        #
        # @param label [String] Body param: A label used to organize pipeline stages in HubSpot's UI. Each pipel
        #
        # @param metadata [Hash{Symbol=>String}] Body param: A JSON object containing properties that are not present on all obje
        #
        # @param stage_id [String] Body param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PipelineStage]
        #
        # @see HubspotSDK::Models::Crm::PipelineCreateParams
        def create(pipeline_id, params)
          parsed, options = HubspotSDK::Crm::PipelineCreateParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["crm/pipelines/2026-03/%1$s/%2$s/stages", object_type, pipeline_id],
            body: parsed,
            model: HubspotSDK::Crm::PipelineStage,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::PipelineUpdateParams} for more details.
        #
        # @overload update(stage_id, object_type:, pipeline_id:, metadata:, archived: nil, display_order: nil, label: nil, request_options: {})
        #
        # @param stage_id [String] Path param
        #
        # @param object_type [String] Path param
        #
        # @param pipeline_id [String] Path param
        #
        # @param metadata [Hash{Symbol=>String}] Body param: A JSON object containing properties that are not present on all obje
        #
        # @param archived [Boolean] Body param: Whether the pipeline is archived.
        #
        # @param display_order [Integer] Body param: The order for displaying this pipeline stage. If two pipeline stages
        #
        # @param label [String] Body param: A label used to organize pipeline stages in HubSpot's UI. Each pipel
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PipelineStage]
        #
        # @see HubspotSDK::Models::Crm::PipelineUpdateParams
        def update(stage_id, params)
          parsed, options = HubspotSDK::Crm::PipelineUpdateParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          pipeline_id =
            parsed.delete(:pipeline_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["crm/pipelines/2026-03/%1$s/%2$s/stages/%3$s", object_type, pipeline_id, stage_id],
            body: parsed,
            model: HubspotSDK::Crm::PipelineStage,
            options: options
          )
        end

        # Return all the stages associated with the pipeline identified by `{pipelineId}`.
        #
        # @overload list(pipeline_id, object_type:, request_options: {})
        #
        # @param pipeline_id [String]
        # @param object_type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::CollectionResponsePipelineStageNoPaging]
        #
        # @see HubspotSDK::Models::Crm::PipelineListParams
        def list(pipeline_id, params)
          parsed, options = HubspotSDK::Crm::PipelineListParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["crm/pipelines/2026-03/%1$s/%2$s/stages", object_type, pipeline_id],
            model: HubspotSDK::Crm::CollectionResponsePipelineStageNoPaging,
            options: options
          )
        end

        # Delete a pipeline stage
        #
        # @overload delete(stage_id, object_type:, pipeline_id:, request_options: {})
        #
        # @param stage_id [String]
        # @param object_type [String]
        # @param pipeline_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::PipelineDeleteParams
        def delete(stage_id, params)
          parsed, options = HubspotSDK::Crm::PipelineDeleteParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          pipeline_id =
            parsed.delete(:pipeline_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["crm/pipelines/2026-03/%1$s/%2$s/stages/%3$s", object_type, pipeline_id, stage_id],
            model: NilClass,
            options: options
          )
        end

        # Return a pipeline stage by ID
        #
        # @overload get(stage_id, object_type:, pipeline_id:, request_options: {})
        #
        # @param stage_id [String]
        # @param object_type [String]
        # @param pipeline_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PipelineStage]
        #
        # @see HubspotSDK::Models::Crm::PipelineGetParams
        def get(stage_id, params)
          parsed, options = HubspotSDK::Crm::PipelineGetParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          pipeline_id =
            parsed.delete(:pipeline_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["crm/pipelines/2026-03/%1$s/%2$s/stages/%3$s", object_type, pipeline_id, stage_id],
            model: HubspotSDK::Crm::PipelineStage,
            options: options
          )
        end

        # Return a reverse chronological list of all mutations that have occurred on the
        # pipeline stage identified by `{stageId}`.
        #
        # @overload get_audit(stage_id, object_type:, pipeline_id:, request_options: {})
        #
        # @param stage_id [String]
        # @param object_type [String]
        # @param pipeline_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::CollectionResponsePublicAuditInfoNoPaging]
        #
        # @see HubspotSDK::Models::Crm::PipelineGetAuditParams
        def get_audit(stage_id, params)
          parsed, options = HubspotSDK::Crm::PipelineGetAuditParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          pipeline_id =
            parsed.delete(:pipeline_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["crm/pipelines/2026-03/%1$s/%2$s/stages/%3$s/audit", object_type, pipeline_id, stage_id],
            model: HubspotSDK::Crm::CollectionResponsePublicAuditInfoNoPaging,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::PipelineReplaceParams} for more details.
        #
        # Replace all the properties of an existing pipeline stage with the values
        # provided. The updated stage will be returned in the response.
        #
        # @overload replace(stage_id, object_type:, pipeline_id:, display_order:, label:, metadata:, request_options: {})
        #
        # @param stage_id [String] Path param
        #
        # @param object_type [String] Path param
        #
        # @param pipeline_id [String] Path param
        #
        # @param display_order [Integer] Body param: The order for displaying this pipeline stage. If two pipeline stages
        #
        # @param label [String] Body param: A label used to organize pipeline stages in HubSpot's UI. Each pipel
        #
        # @param metadata [Hash{Symbol=>String}] Body param: A JSON object containing properties that are not present on all obje
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PipelineStage]
        #
        # @see HubspotSDK::Models::Crm::PipelineReplaceParams
        def replace(stage_id, params)
          parsed, options = HubspotSDK::Crm::PipelineReplaceParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          pipeline_id =
            parsed.delete(:pipeline_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["crm/pipelines/2026-03/%1$s/%2$s/stages/%3$s", object_type, pipeline_id, stage_id],
            body: parsed,
            model: HubspotSDK::Crm::PipelineStage,
            options: options
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
