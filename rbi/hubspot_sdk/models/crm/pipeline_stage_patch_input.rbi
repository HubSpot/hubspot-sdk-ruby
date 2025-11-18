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

        # A JSON object containing properties that are not present on all object
        # pipelines.
        #
        # For `deals` pipelines, the `probability` field is required
        # (`{ "probability": 0.5 }`), and represents the likelihood a deal will close.
        # Possible values are between 0.0 and 1.0 in increments of 0.1.
        #
        # For `tickets` pipelines, the `ticketState` field is optional
        # (`{ "ticketState": "OPEN" }`), and represents whether the ticket remains open or
        # has been closed by a member of your Support team. Possible values are `OPEN` or
        # `CLOSED`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        # Whether the pipeline is archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        # The order for displaying this pipeline stage. If two pipeline stages have a
        # matching `displayOrder`, they will be sorted alphabetically by label.
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

        # An input used to update some properties on a pipeline definition.
        sig do
          params(
            metadata: T::Hash[Symbol, String],
            archived: T::Boolean,
            display_order: Integer,
            label: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A JSON object containing properties that are not present on all object
          # pipelines.
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
          # Whether the pipeline is archived.
          archived: nil,
          # The order for displaying this pipeline stage. If two pipeline stages have a
          # matching `displayOrder`, they will be sorted alphabetically by label.
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
