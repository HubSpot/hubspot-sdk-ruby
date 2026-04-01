# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Pipelines
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::PipelineCreateParams} for more details.
        #
        # Create a new pipeline with the provided property values. The entire pipeline
        # object, including its unique ID, will be returned in the response.
        #
        # @overload create(object_type, display_order:, label:, stages:, pipeline_id: nil, request_options: {})
        #
        # @param object_type [String]
        #
        # @param display_order [Integer] The order for displaying this pipeline. If two pipelines have a matching `displa
        #
        # @param label [String] A unique label used to organize pipelines in HubSpot's UI
        #
        # @param stages [Array<HubspotSDK::Models::Crm::PipelineStageInput>] Pipeline stage inputs used to create the new or replacement pipeline.
        #
        # @param pipeline_id [String]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::Pipeline]
        #
        # @see HubspotSDK::Models::Crm::PipelineCreateParams
        def create(object_type, params)
          parsed, options = HubspotSDK::Crm::PipelineCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["crm/pipelines/2026-03/%1$s", object_type],
            body: parsed,
            model: HubspotSDK::Crm::Pipeline,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::PipelineUpdateParams} for more details.
        #
        # Perform a partial update of the pipeline identified by `{pipelineId}`. The
        # updated pipeline will be returned in the response.
        #
        # @overload update(pipeline_id, object_type:, validate_deal_stage_usages_before_delete: nil, validate_references_before_delete: nil, archived: nil, display_order: nil, label: nil, request_options: {})
        #
        # @param pipeline_id [String] Path param
        #
        # @param object_type [String] Path param
        #
        # @param validate_deal_stage_usages_before_delete [Boolean] Query param
        #
        # @param validate_references_before_delete [Boolean] Query param
        #
        # @param archived [Boolean] Body param: Whether the pipeline is archived. This property should only be provi
        #
        # @param display_order [Integer] Body param: The order for displaying this pipeline. If two pipelines have a matc
        #
        # @param label [String] Body param: A unique label used to organize pipelines in HubSpot's UI
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::Pipeline]
        #
        # @see HubspotSDK::Models::Crm::PipelineUpdateParams
        def update(pipeline_id, params)
          query_params = [:validate_deal_stage_usages_before_delete, :validate_references_before_delete]
          parsed, options = HubspotSDK::Crm::PipelineUpdateParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["crm/pipelines/2026-03/%1$s/%2$s", object_type, pipeline_id],
            query: query.transform_keys(
              validate_deal_stage_usages_before_delete: "validateDealStageUsagesBeforeDelete",
              validate_references_before_delete: "validateReferencesBeforeDelete"
            ),
            body: parsed.except(*query_params),
            model: HubspotSDK::Crm::Pipeline,
            options: options
          )
        end

        # Return all pipelines for the object type specified by `{objectType}`.
        #
        # @overload list(object_type, request_options: {})
        #
        # @param object_type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::CollectionResponsePipelineNoPaging]
        #
        # @see HubspotSDK::Models::Crm::PipelineListParams
        def list(object_type, params = {})
          @client.request(
            method: :get,
            path: ["crm/pipelines/2026-03/%1$s", object_type],
            model: HubspotSDK::Crm::CollectionResponsePipelineNoPaging,
            options: params[:request_options]
          )
        end

        # Delete a pipeline
        #
        # @overload delete(pipeline_id, object_type:, validate_deal_stage_usages_before_delete: nil, validate_references_before_delete: nil, request_options: {})
        #
        # @param pipeline_id [String] Path param
        #
        # @param object_type [String] Path param
        #
        # @param validate_deal_stage_usages_before_delete [Boolean] Query param
        #
        # @param validate_references_before_delete [Boolean] Query param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::PipelineDeleteParams
        def delete(pipeline_id, params)
          parsed, options = HubspotSDK::Crm::PipelineDeleteParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["crm/pipelines/2026-03/%1$s/%2$s", object_type, pipeline_id],
            query: query.transform_keys(
              validate_deal_stage_usages_before_delete: "validateDealStageUsagesBeforeDelete",
              validate_references_before_delete: "validateReferencesBeforeDelete"
            ),
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::PipelineCreateStageParams} for more details.
        #
        # Create a pipeline stage
        #
        # @overload create_stage(pipeline_id, object_type:, display_order:, label:, metadata:, stage_id: nil, request_options: {})
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
        # @see HubspotSDK::Models::Crm::PipelineCreateStageParams
        def create_stage(pipeline_id, params)
          parsed, options = HubspotSDK::Crm::PipelineCreateStageParams.dump_request(params)
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

        # Delete a pipeline stage
        #
        # @overload delete_stage(stage_id, object_type:, pipeline_id:, request_options: {})
        #
        # @param stage_id [String]
        # @param object_type [String]
        # @param pipeline_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::PipelineDeleteStageParams
        def delete_stage(stage_id, params)
          parsed, options = HubspotSDK::Crm::PipelineDeleteStageParams.dump_request(params)
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

        # Return a single pipeline object identified by its unique `{pipelineId}`.
        #
        # @overload get(pipeline_id, object_type:, request_options: {})
        #
        # @param pipeline_id [String]
        # @param object_type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::Pipeline]
        #
        # @see HubspotSDK::Models::Crm::PipelineGetParams
        def get(pipeline_id, params)
          parsed, options = HubspotSDK::Crm::PipelineGetParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["crm/pipelines/2026-03/%1$s/%2$s", object_type, pipeline_id],
            model: HubspotSDK::Crm::Pipeline,
            options: options
          )
        end

        # Return a pipeline stage by ID
        #
        # @overload get_stage(stage_id, object_type:, pipeline_id:, request_options: {})
        #
        # @param stage_id [String]
        # @param object_type [String]
        # @param pipeline_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PipelineStage]
        #
        # @see HubspotSDK::Models::Crm::PipelineGetStageParams
        def get_stage(stage_id, params)
          parsed, options = HubspotSDK::Crm::PipelineGetStageParams.dump_request(params)
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
        # pipeline identified by `{pipelineId}`.
        #
        # @overload list_audit(pipeline_id, object_type:, request_options: {})
        #
        # @param pipeline_id [String]
        # @param object_type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::CollectionResponsePublicAuditInfoNoPaging]
        #
        # @see HubspotSDK::Models::Crm::PipelineListAuditParams
        def list_audit(pipeline_id, params)
          parsed, options = HubspotSDK::Crm::PipelineListAuditParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["crm/pipelines/2026-03/%1$s/%2$s/audit", object_type, pipeline_id],
            model: HubspotSDK::Crm::CollectionResponsePublicAuditInfoNoPaging,
            options: options
          )
        end

        # Return a reverse chronological list of all mutations that have occurred on the
        # pipeline stage identified by `{stageId}`.
        #
        # @overload list_stage_audit(stage_id, object_type:, pipeline_id:, request_options: {})
        #
        # @param stage_id [String]
        # @param object_type [String]
        # @param pipeline_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::CollectionResponsePublicAuditInfoNoPaging]
        #
        # @see HubspotSDK::Models::Crm::PipelineListStageAuditParams
        def list_stage_audit(stage_id, params)
          parsed, options = HubspotSDK::Crm::PipelineListStageAuditParams.dump_request(params)
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

        # Return all the stages associated with the pipeline identified by `{pipelineId}`.
        #
        # @overload list_stages(pipeline_id, object_type:, request_options: {})
        #
        # @param pipeline_id [String]
        # @param object_type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::CollectionResponsePipelineStageNoPaging]
        #
        # @see HubspotSDK::Models::Crm::PipelineListStagesParams
        def list_stages(pipeline_id, params)
          parsed, options = HubspotSDK::Crm::PipelineListStagesParams.dump_request(params)
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

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::PipelineUpdateAllPropertiesParams} for more details.
        #
        # Replace a pipeline
        #
        # @overload update_all_properties(pipeline_id, object_type:, display_order:, label:, stages:, validate_deal_stage_usages_before_delete: nil, validate_references_before_delete: nil, request_options: {})
        #
        # @param pipeline_id [String] Path param
        #
        # @param object_type [String] Path param
        #
        # @param display_order [Integer] Body param: The order for displaying this pipeline stage. If two pipeline stages
        #
        # @param label [String] Body param: A label used to organize pipeline stages in HubSpot's UI. Each pipel
        #
        # @param stages [Array<HubspotSDK::Models::Crm::PipelineStageInput>] Body param: The stages associated with the pipeline. They can be retrieved and u
        #
        # @param validate_deal_stage_usages_before_delete [Boolean] Query param
        #
        # @param validate_references_before_delete [Boolean] Query param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::Pipeline]
        #
        # @see HubspotSDK::Models::Crm::PipelineUpdateAllPropertiesParams
        def update_all_properties(pipeline_id, params)
          query_params = [:validate_deal_stage_usages_before_delete, :validate_references_before_delete]
          parsed, options = HubspotSDK::Crm::PipelineUpdateAllPropertiesParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["crm/pipelines/2026-03/%1$s/%2$s", object_type, pipeline_id],
            query: query.transform_keys(
              validate_deal_stage_usages_before_delete: "validateDealStageUsagesBeforeDelete",
              validate_references_before_delete: "validateReferencesBeforeDelete"
            ),
            body: parsed.except(*query_params),
            model: HubspotSDK::Crm::Pipeline,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::PipelineUpdateStageParams} for more details.
        #
        # @overload update_stage(stage_id, object_type:, pipeline_id:, metadata:, archived: nil, display_order: nil, label: nil, request_options: {})
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
        # @see HubspotSDK::Models::Crm::PipelineUpdateStageParams
        def update_stage(stage_id, params)
          parsed, options = HubspotSDK::Crm::PipelineUpdateStageParams.dump_request(params)
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

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::PipelineUpdateStageAllPropertiesParams} for more
        # details.
        #
        # Replace all the properties of an existing pipeline stage with the values
        # provided. The updated stage will be returned in the response.
        #
        # @overload update_stage_all_properties(stage_id, object_type:, pipeline_id:, display_order:, label:, metadata:, request_options: {})
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
        # @see HubspotSDK::Models::Crm::PipelineUpdateStageAllPropertiesParams
        def update_stage_all_properties(stage_id, params)
          parsed, options = HubspotSDK::Crm::PipelineUpdateStageAllPropertiesParams.dump_request(params)
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
