# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Pipelines
        class Stages
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Pipelines::StageCreateParams} for more details.
          #
          # Create a new stage within the specified pipeline.
          #
          # @overload create(pipeline_id, object_type:, display_order:, label:, metadata:, request_options: {})
          #
          # @param pipeline_id [String] Path param: The unique identifier of the pipeline to which the stage will be add
          #
          # @param object_type [String] Path param: The object type of the stage being created (ex. deals or tickets)
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
          # @see HubspotSDK::Models::Crm::Pipelines::StageCreateParams
          def create(pipeline_id, params)
            parsed, options = HubspotSDK::Crm::Pipelines::StageCreateParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["crm/v3/pipelines/%1$s/%2$s/stages", object_type, pipeline_id],
              body: parsed,
              model: HubspotSDK::Crm::PipelineStage,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Pipelines::StageUpdateParams} for more details.
          #
          # Perform a partial update on a specific stage of a pipeline.
          #
          # @overload update(stage_id, object_type:, pipeline_id:, metadata:, archived: nil, display_order: nil, label: nil, request_options: {})
          #
          # @param stage_id [String] Path param: The unique identifier of the stage to be updated in the pipeline.
          #
          # @param object_type [String] Path param: The object type of the stage being updated (ex. deals or tickets)
          #
          # @param pipeline_id [String] Path param: The unique identifier of the pipeline containing the stage to be upd
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
          # @see HubspotSDK::Models::Crm::Pipelines::StageUpdateParams
          def update(stage_id, params)
            parsed, options = HubspotSDK::Crm::Pipelines::StageUpdateParams.dump_request(params)
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
              path: ["crm/v3/pipelines/%1$s/%2$s/stages/%3$s", object_type, pipeline_id, stage_id],
              body: parsed,
              model: HubspotSDK::Crm::PipelineStage,
              options: options
            )
          end

          # Return all the stages associated with the pipeline identified by `{pipelineId}`.
          #
          # @overload list(pipeline_id, object_type:, request_options: {})
          #
          # @param pipeline_id [String] The unique identifier of the pipeline whose stages are being retrieved.
          #
          # @param object_type [String] The object type of the stages being retrieved (ex. deals or tickets)
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CollectionResponsePipelineStageNoPaging]
          #
          # @see HubspotSDK::Models::Crm::Pipelines::StageListParams
          def list(pipeline_id, params)
            parsed, options = HubspotSDK::Crm::Pipelines::StageListParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["crm/v3/pipelines/%1$s/%2$s/stages", object_type, pipeline_id],
              model: HubspotSDK::Crm::CollectionResponsePipelineStageNoPaging,
              options: options
            )
          end

          # Delete a specific stage from a pipeline.
          #
          # @overload delete(stage_id, object_type:, pipeline_id:, request_options: {})
          #
          # @param stage_id [String] The unique identifier of the stage to be deleted from the pipeline.
          #
          # @param object_type [String] The object type of the stage being deleted (ex. deals or tickets)
          #
          # @param pipeline_id [String] The unique identifier of the pipeline from which the stage will be deleted.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Pipelines::StageDeleteParams
          def delete(stage_id, params)
            parsed, options = HubspotSDK::Crm::Pipelines::StageDeleteParams.dump_request(params)
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
              path: ["crm/v3/pipelines/%1$s/%2$s/stages/%3$s", object_type, pipeline_id, stage_id],
              model: NilClass,
              options: options
            )
          end

          # Retrieve a specific stage from a pipeline using its ID.
          #
          # @overload get(stage_id, object_type:, pipeline_id:, request_options: {})
          #
          # @param stage_id [String] The unique identifier of the stage to be retrieved from the pipeline.
          #
          # @param object_type [String] The object type of the stage being retrieved (ex. deals or tickets)
          #
          # @param pipeline_id [String] The unique identifier of the pipeline containing the stage to be retrieved.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::PipelineStage]
          #
          # @see HubspotSDK::Models::Crm::Pipelines::StageGetParams
          def get(stage_id, params)
            parsed, options = HubspotSDK::Crm::Pipelines::StageGetParams.dump_request(params)
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
              path: ["crm/v3/pipelines/%1$s/%2$s/stages/%3$s", object_type, pipeline_id, stage_id],
              model: HubspotSDK::Crm::PipelineStage,
              options: options
            )
          end

          # Return a reverse chronological list of all mutations that have occurred on the
          # pipeline stage identified by `{stageId}`.
          #
          # @overload get_audit(stage_id, object_type:, pipeline_id:, request_options: {})
          #
          # @param stage_id [String] The unique identifier for the pipeline stage being audited.
          #
          # @param object_type [String] The object type of the stage audit being retrieved (ex. deals or tickets)
          #
          # @param pipeline_id [String]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CollectionResponsePublicAuditInfoNoPaging]
          #
          # @see HubspotSDK::Models::Crm::Pipelines::StageGetAuditParams
          def get_audit(stage_id, params)
            parsed, options = HubspotSDK::Crm::Pipelines::StageGetAuditParams.dump_request(params)
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
              path: ["crm/v3/pipelines/%1$s/%2$s/stages/%3$s/audit", object_type, pipeline_id, stage_id],
              model: HubspotSDK::Crm::CollectionResponsePublicAuditInfoNoPaging,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Pipelines::StageReplaceParams} for more details.
          #
          # Replace all the properties of an existing pipeline stage with the values
          # provided. The updated stage will be returned in the response.
          #
          # @overload replace(stage_id, object_type:, pipeline_id:, display_order:, label:, metadata:, request_options: {})
          #
          # @param stage_id [String] Path param: The unique identifier of the stage to be replaced in the pipeline.
          #
          # @param object_type [String] Path param: The object type of the pipeline being updated (ex. deals or tickets)
          #
          # @param pipeline_id [String] Path param: The unique identifier of the pipeline to which the stage belongs.
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
          # @see HubspotSDK::Models::Crm::Pipelines::StageReplaceParams
          def replace(stage_id, params)
            parsed, options = HubspotSDK::Crm::Pipelines::StageReplaceParams.dump_request(params)
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
              path: ["crm/v3/pipelines/%1$s/%2$s/stages/%3$s", object_type, pipeline_id, stage_id],
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
end
