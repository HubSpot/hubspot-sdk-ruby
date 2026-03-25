# typed: strong

module HubspotSDK
  module Models
    module Crm
      class Pipeline < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Crm::Pipeline, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        # Whether the pipeline is archived.
        sig { returns(T::Boolean) }
        attr_accessor :archived

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(Integer) }
        attr_accessor :display_order

        sig { returns(String) }
        attr_accessor :label

        # The stages associated with the pipeline. They can be retrieved and updated via
        # the pipeline stages endpoints.
        sig { returns(T::Array[HubspotSDK::Crm::PipelineStage]) }
        attr_accessor :stages

        # The date the pipeline was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The date the pipeline was archived. `archivedAt` will only be present if the
        # pipeline is archived.
        sig { returns(T.nilable(Time)) }
        attr_reader :archived_at

        sig { params(archived_at: Time).void }
        attr_writer :archived_at

        sig do
          params(
            id: String,
            archived: T::Boolean,
            created_at: Time,
            display_order: Integer,
            label: String,
            stages: T::Array[HubspotSDK::Crm::PipelineStage::OrHash],
            updated_at: Time,
            archived_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Whether the pipeline is archived.
          archived:,
          created_at:,
          display_order:,
          label:,
          # The stages associated with the pipeline. They can be retrieved and updated via
          # the pipeline stages endpoints.
          stages:,
          # The date the pipeline was last updated.
          updated_at:,
          # The date the pipeline was archived. `archivedAt` will only be present if the
          # pipeline is archived.
          archived_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              archived: T::Boolean,
              created_at: Time,
              display_order: Integer,
              label: String,
              stages: T::Array[HubspotSDK::Crm::PipelineStage],
              updated_at: Time,
              archived_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
