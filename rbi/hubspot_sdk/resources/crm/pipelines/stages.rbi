# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Pipelines
        class Stages
          # Create a pipeline stage
          sig do
            params(
              pipeline_id: String,
              object_type: String,
              display_order: Integer,
              label: String,
              metadata: T::Hash[Symbol, String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::PipelineStage)
          end
          def create(
            # Path param:
            pipeline_id,
            # Path param:
            object_type:,
            # Body param: The order for displaying this pipeline stage. If two pipeline stages
            # have a matching `displayOrder`, they will be sorted alphabetically by label.
            display_order:,
            # Body param: A label used to organize pipeline stages in HubSpot's UI. Each
            # pipeline stage's label must be unique within that pipeline.
            label:,
            # Body param: A JSON object containing properties that are not present on all
            # object pipelines.
            #
            # For `deals` pipelines, the `probability` field is required
            # (`{ "probability": 0.5 }`), and represents the likelihood a deal will close.
            # Possible values are between 0.0 and 1.0 in increments of 0.1.
            #
            # For `tickets` pipelines, the `ticketState` field is optional
            # (`{ "ticketState": "OPEN" }`), and represents whether the ticket remains open or
            # has been closed by a member of your Support team. Possible values are `OPEN` or
            # `CLOSED`.
            metadata: nil,
            request_options: {}
          )
          end

          sig do
            params(
              stage_id: String,
              object_type: String,
              pipeline_id: String,
              archived: T::Boolean,
              display_order: Integer,
              label: String,
              metadata: T::Hash[Symbol, String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::PipelineStage)
          end
          def update(
            # Path param:
            stage_id,
            # Path param:
            object_type:,
            # Path param:
            pipeline_id:,
            # Body param: Whether the pipeline is archived.
            archived: nil,
            # Body param: The order for displaying this pipeline stage. If two pipeline stages
            # have a matching `displayOrder`, they will be sorted alphabetically by label.
            display_order: nil,
            # Body param: A label used to organize pipeline stages in HubSpot's UI. Each
            # pipeline stage's label must be unique within that pipeline.
            label: nil,
            # Body param: A JSON object containing properties that are not present on all
            # object pipelines.
            #
            # For `deals` pipelines, the `probability` field is required
            # (`{ "probability": 0.5 }`), and represents the likelihood a deal will close.
            # Possible values are between 0.0 and 1.0 in increments of 0.1.
            #
            # For `tickets` pipelines, the `ticketState` field is optional
            # (`{ "ticketState": "OPEN" }`), and represents whether the ticket remains open or
            # has been closed by a member of your Support team. Possible values are `OPEN` or
            # `CLOSED`.
            metadata: nil,
            request_options: {}
          )
          end

          # Return all the stages associated with the pipeline identified by `{pipelineId}`.
          sig do
            params(
              pipeline_id: String,
              object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::CollectionResponsePipelineStageNoPaging)
          end
          def list(pipeline_id, object_type:, request_options: {})
          end

          # Delete a pipeline stage
          sig do
            params(
              stage_id: String,
              object_type: String,
              pipeline_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(stage_id, object_type:, pipeline_id:, request_options: {})
          end

          # Return a pipeline stage by ID
          sig do
            params(
              stage_id: String,
              object_type: String,
              pipeline_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::PipelineStage)
          end
          def get(stage_id, object_type:, pipeline_id:, request_options: {})
          end

          # Return a reverse chronological list of all mutations that have occurred on the
          # pipeline stage identified by `{stageId}`.
          sig do
            params(
              stage_id: String,
              object_type: String,
              pipeline_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::CRM::CollectionResponsePublicAuditInfoNoPaging
            )
          end
          def get_audit(
            stage_id,
            object_type:,
            pipeline_id:,
            request_options: {}
          )
          end

          # Replace all the properties of an existing pipeline stage with the values
          # provided. The updated stage will be returned in the response.
          sig do
            params(
              stage_id: String,
              object_type: String,
              pipeline_id: String,
              display_order: Integer,
              label: String,
              metadata: T::Hash[Symbol, String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::PipelineStage)
          end
          def replace(
            # Path param:
            stage_id,
            # Path param:
            object_type:,
            # Path param:
            pipeline_id:,
            # Body param: The order for displaying this pipeline stage. If two pipeline stages
            # have a matching `displayOrder`, they will be sorted alphabetically by label.
            display_order:,
            # Body param: A label used to organize pipeline stages in HubSpot's UI. Each
            # pipeline stage's label must be unique within that pipeline.
            label:,
            # Body param: A JSON object containing properties that are not present on all
            # object pipelines.
            #
            # For `deals` pipelines, the `probability` field is required
            # (`{ "probability": 0.5 }`), and represents the likelihood a deal will close.
            # Possible values are between 0.0 and 1.0 in increments of 0.1.
            #
            # For `tickets` pipelines, the `ticketState` field is optional
            # (`{ "ticketState": "OPEN" }`), and represents whether the ticket remains open or
            # has been closed by a member of your Support team. Possible values are `OPEN` or
            # `CLOSED`.
            metadata: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
