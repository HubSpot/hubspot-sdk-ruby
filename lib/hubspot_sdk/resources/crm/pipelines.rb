# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Pipelines
        # @return [HubspotSDK::Resources::CRM::Pipelines::Stages]
        attr_reader :stages

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::CRM::PipelineCreateParams} for more details.
        #
        # Create a new pipeline with the provided property values. The entire pipeline
        # object, including its unique ID, will be returned in the response.
        #
        # @overload create(object_type, display_order:, label:, stages:, request_options: {})
        #
        # @param object_type [String]
        #
        # @param display_order [Integer] The order for displaying this pipeline. If two pipelines have a matching `displa
        #
        # @param label [String] A unique label used to organize pipelines in HubSpot's UI
        #
        # @param stages [Array<HubspotSDK::Models::CRM::PipelineStageInput>] Pipeline stage inputs used to create the new or replacement pipeline.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::Pipeline]
        #
        # @see HubspotSDK::Models::CRM::PipelineCreateParams
        def create(object_type, params)
          parsed, options = HubspotSDK::CRM::PipelineCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["crm/v3/pipelines/%1$s", object_type],
            body: parsed,
            model: HubspotSDK::CRM::Pipeline,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::CRM::PipelineUpdateParams} for more details.
        #
        # Perform a partial update of the pipeline identified by `{pipelineId}`. The
        # updated pipeline will be returned in the response.
        #
        # @overload update(pipeline_id, object_type:, validate_deal_stage_usages_before_delete: nil, validate_references_before_delete: nil, archived: nil, display_order: nil, label: nil, request_options: {})
        #
        # @param pipeline_id [String] Path param:
        #
        # @param object_type [String] Path param:
        #
        # @param validate_deal_stage_usages_before_delete [Boolean] Query param:
        #
        # @param validate_references_before_delete [Boolean] Query param:
        #
        # @param archived [Boolean] Body param: Whether the pipeline is archived. This property should only be provi
        #
        # @param display_order [Integer] Body param: The order for displaying this pipeline. If two pipelines have a matc
        #
        # @param label [String] Body param: A unique label used to organize pipelines in HubSpot's UI
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::Pipeline]
        #
        # @see HubspotSDK::Models::CRM::PipelineUpdateParams
        def update(pipeline_id, params)
          parsed, options = HubspotSDK::CRM::PipelineUpdateParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          query_params = [:validate_deal_stage_usages_before_delete, :validate_references_before_delete]
          @client.request(
            method: :patch,
            path: ["crm/v3/pipelines/%1$s/%2$s", object_type, pipeline_id],
            query: parsed.slice(*query_params).transform_keys(
              validate_deal_stage_usages_before_delete: "validateDealStageUsagesBeforeDelete",
              validate_references_before_delete: "validateReferencesBeforeDelete"
            ),
            body: parsed.except(*query_params),
            model: HubspotSDK::CRM::Pipeline,
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
        # @return [HubspotSDK::Models::CRM::CollectionResponsePipelineNoPaging]
        #
        # @see HubspotSDK::Models::CRM::PipelineListParams
        def list(object_type, params = {})
          @client.request(
            method: :get,
            path: ["crm/v3/pipelines/%1$s", object_type],
            model: HubspotSDK::CRM::CollectionResponsePipelineNoPaging,
            options: params[:request_options]
          )
        end

        # Delete the pipeline identified by `{pipelineId}`.
        #
        # @overload delete(pipeline_id, object_type:, validate_deal_stage_usages_before_delete: nil, validate_references_before_delete: nil, request_options: {})
        #
        # @param pipeline_id [String] Path param:
        #
        # @param object_type [String] Path param:
        #
        # @param validate_deal_stage_usages_before_delete [Boolean] Query param:
        #
        # @param validate_references_before_delete [Boolean] Query param:
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::CRM::PipelineDeleteParams
        def delete(pipeline_id, params)
          parsed, options = HubspotSDK::CRM::PipelineDeleteParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["crm/v3/pipelines/%1$s/%2$s", object_type, pipeline_id],
            query: parsed.transform_keys(
              validate_deal_stage_usages_before_delete: "validateDealStageUsagesBeforeDelete",
              validate_references_before_delete: "validateReferencesBeforeDelete"
            ),
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
        # @return [HubspotSDK::Models::CRM::Pipeline]
        #
        # @see HubspotSDK::Models::CRM::PipelineGetParams
        def get(pipeline_id, params)
          parsed, options = HubspotSDK::CRM::PipelineGetParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["crm/v3/pipelines/%1$s/%2$s", object_type, pipeline_id],
            model: HubspotSDK::CRM::Pipeline,
            options: options
          )
        end

        # Return a reverse chronological list of all mutations that have occurred on the
        # pipeline identified by `{pipelineId}`.
        #
        # @overload get_audit(pipeline_id, object_type:, request_options: {})
        #
        # @param pipeline_id [String]
        # @param object_type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::CollectionResponsePublicAuditInfoNoPaging]
        #
        # @see HubspotSDK::Models::CRM::PipelineGetAuditParams
        def get_audit(pipeline_id, params)
          parsed, options = HubspotSDK::CRM::PipelineGetAuditParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["crm/v3/pipelines/%1$s/%2$s/audit", object_type, pipeline_id],
            model: HubspotSDK::CRM::CollectionResponsePublicAuditInfoNoPaging,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::CRM::PipelineReplaceParams} for more details.
        #
        # Replace all the properties of an existing pipeline with the values provided.
        # This will overwrite any existing pipeline stages. The updated pipeline will be
        # returned in the response.
        #
        # @overload replace(pipeline_id, object_type:, display_order:, label:, stages:, validate_deal_stage_usages_before_delete: nil, validate_references_before_delete: nil, request_options: {})
        #
        # @param pipeline_id [String] Path param:
        #
        # @param object_type [String] Path param:
        #
        # @param display_order [Integer] Body param: The order for displaying this pipeline. If two pipelines have a matc
        #
        # @param label [String] Body param: A unique label used to organize pipelines in HubSpot's UI
        #
        # @param stages [Array<HubspotSDK::Models::CRM::PipelineStageInput>] Body param: Pipeline stage inputs used to create the new or replacement pipeline
        #
        # @param validate_deal_stage_usages_before_delete [Boolean] Query param:
        #
        # @param validate_references_before_delete [Boolean] Query param:
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::Pipeline]
        #
        # @see HubspotSDK::Models::CRM::PipelineReplaceParams
        def replace(pipeline_id, params)
          parsed, options = HubspotSDK::CRM::PipelineReplaceParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          query_params = [:validate_deal_stage_usages_before_delete, :validate_references_before_delete]
          @client.request(
            method: :put,
            path: ["crm/v3/pipelines/%1$s/%2$s", object_type, pipeline_id],
            query: parsed.slice(*query_params).transform_keys(
              validate_deal_stage_usages_before_delete: "validateDealStageUsagesBeforeDelete",
              validate_references_before_delete: "validateReferencesBeforeDelete"
            ),
            body: parsed.except(*query_params),
            model: HubspotSDK::CRM::Pipeline,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @stages = HubspotSDK::Resources::CRM::Pipelines::Stages.new(client: client)
        end
      end
    end
  end
end
