# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PipelineStageInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PipelineStageInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The order for displaying this pipeline stage. If two pipeline stages have a
        # matching `displayOrder`, they will be sorted alphabetically by label.
        sig { returns(Integer) }
        attr_accessor :display_order

        # A label used to organize pipeline stages in HubSpot's UI. Each pipeline stage's
        # label must be unique within that pipeline.
        sig { returns(String) }
        attr_accessor :label

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

        # An input used to create or replace a pipeline stage's definition.
        sig do
          params(
            display_order: Integer,
            label: String,
            metadata: T::Hash[Symbol, String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The order for displaying this pipeline stage. If two pipeline stages have a
          # matching `displayOrder`, they will be sorted alphabetically by label.
          display_order:,
          # A label used to organize pipeline stages in HubSpot's UI. Each pipeline stage's
          # label must be unique within that pipeline.
          label:,
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
          metadata:
        )
        end

        sig do
          override.returns(
            {
              display_order: Integer,
              label: String,
              metadata: T::Hash[Symbol, String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
