# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PipelineStagePatchInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PipelineStagePatchInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        # Whether the pipeline is archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig { returns(T.nilable(Integer)) }
        attr_reader :display_order

        sig { params(display_order: Integer).void }
        attr_writer :display_order

        # A label used to organize pipeline stages in HubSpot's UI. Each pipeline stage's
        # label must be unique within that pipeline.
        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        sig do
          params(
            metadata: T::Hash[Symbol, String],
            archived: T::Boolean,
            display_order: Integer,
            label: String
          ).returns(T.attached_class)
        end
        def self.new(
          metadata:,
          # Whether the pipeline is archived.
          archived: nil,
          display_order: nil,
          # A label used to organize pipeline stages in HubSpot's UI. Each pipeline stage's
          # label must be unique within that pipeline.
          label: nil
        )
        end

        sig do
          override.returns(
            {
              metadata: T::Hash[Symbol, String],
              archived: T::Boolean,
              display_order: Integer,
              label: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
