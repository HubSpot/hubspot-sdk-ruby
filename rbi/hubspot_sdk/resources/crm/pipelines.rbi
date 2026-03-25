# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Pipelines
        sig do
          params(
            pipeline_id: String,
            object_type: String,
            display_order: Integer,
            label: String,
            metadata: T::Hash[Symbol, String],
            stage_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::PipelineStage)
        end
        def create(
          # Path param
          pipeline_id,
          # Path param
          object_type:,
          # Body param
          display_order:,
          # Body param
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
          # Body param
          stage_id: nil,
          request_options: {}
        )
        end

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
          # Path param
          stage_id,
          # Path param
          object_type:,
          # Path param
          pipeline_id:,
          # Body param
          metadata:,
          # Body param: Whether the pipeline is archived.
          archived: nil,
          # Body param
          display_order: nil,
          # Body param: A label used to organize pipeline stages in HubSpot's UI. Each
          # pipeline stage's label must be unique within that pipeline.
          label: nil,
          request_options: {}
        )
        end

        sig do
          params(
            pipeline_id: String,
            object_type: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::CollectionResponsePipelineStageNoPaging)
        end
        def list(pipeline_id, object_type:, request_options: {})
        end

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

        sig do
          params(
            stage_id: String,
            object_type: String,
            pipeline_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::PipelineStage)
        end
        def get(stage_id, object_type:, pipeline_id:, request_options: {})
        end

        sig do
          params(
            stage_id: String,
            object_type: String,
            pipeline_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::CollectionResponsePublicAuditInfoNoPaging)
        end
        def get_audit(stage_id, object_type:, pipeline_id:, request_options: {})
        end

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
          # Path param
          stage_id,
          # Path param
          object_type:,
          # Path param
          pipeline_id:,
          # Body param
          display_order:,
          # Body param
          label:,
          # Body param
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
