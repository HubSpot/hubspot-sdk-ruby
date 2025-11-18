# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Pipelines
        class Stages
          # Create a new stage within the specified pipeline.
          sig do
            params(
              pipeline_id: String,
              object_type: String,
              display_order: Integer,
              label: String,
              metadata: T::Hash[Symbol, String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::PipelineStage)
          end
          def create(
            # Path param: The unique identifier of the pipeline to which the stage will be
            # added.
            pipeline_id,
            # Path param: The object type of the stage being created (ex. deals or tickets)
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
            metadata:,
            request_options: {}
          )
          end

          # Perform a partial update on a specific stage of a pipeline.
          sig do
            params(
              stage_id: String,
              object_type: String,
              pipeline_id: String,
              metadata: T::Hash[Symbol, String],
              archived: T::Boolean,
              display_order: Integer,
              label: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::PipelineStage)
          end
          def update(
            # Path param: The unique identifier of the stage to be updated in the pipeline.
            stage_id,
            # Path param: The object type of the stage being updated (ex. deals or tickets)
            object_type:,
            # Path param: The unique identifier of the pipeline containing the stage to be
            # updated.
            pipeline_id:,
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
            metadata:,
            # Body param: Whether the pipeline is archived.
            archived: nil,
            # Body param: The order for displaying this pipeline stage. If two pipeline stages
            # have a matching `displayOrder`, they will be sorted alphabetically by label.
            display_order: nil,
            # Body param: A label used to organize pipeline stages in HubSpot's UI. Each
            # pipeline stage's label must be unique within that pipeline.
            label: nil,
            request_options: {}
          )
          end

          # Return all the stages associated with the pipeline identified by `{pipelineId}`.
          sig do
            params(
              pipeline_id: String,
              object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::CollectionResponsePipelineStageNoPaging)
          end
          def list(
            # The unique identifier of the pipeline whose stages are being retrieved.
            pipeline_id,
            # The object type of the stages being retrieved (ex. deals or tickets)
            object_type:,
            request_options: {}
          )
          end

          # Delete a specific stage from a pipeline.
          sig do
            params(
              stage_id: String,
              object_type: String,
              pipeline_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The unique identifier of the stage to be deleted from the pipeline.
            stage_id,
            # The object type of the stage being deleted (ex. deals or tickets)
            object_type:,
            # The unique identifier of the pipeline from which the stage will be deleted.
            pipeline_id:,
            request_options: {}
          )
          end

          # Retrieve a specific stage from a pipeline using its ID.
          sig do
            params(
              stage_id: String,
              object_type: String,
              pipeline_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::PipelineStage)
          end
          def get(
            # The unique identifier of the stage to be retrieved from the pipeline.
            stage_id,
            # The object type of the stage being retrieved (ex. deals or tickets)
            object_type:,
            # The unique identifier of the pipeline containing the stage to be retrieved.
            pipeline_id:,
            request_options: {}
          )
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
              HubspotSDK::Crm::CollectionResponsePublicAuditInfoNoPaging
            )
          end
          def get_audit(
            # The unique identifier for the pipeline stage being audited.
            stage_id,
            # The object type of the stage audit being retrieved (ex. deals or tickets)
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
            ).returns(HubspotSDK::Crm::PipelineStage)
          end
          def replace(
            # Path param: The unique identifier of the stage to be replaced in the pipeline.
            stage_id,
            # Path param: The object type of the pipeline being updated (ex. deals or tickets)
            object_type:,
            # Path param: The unique identifier of the pipeline to which the stage belongs.
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
            metadata:,
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
