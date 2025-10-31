# typed: strong

module HubspotSDK
  module Models
    module Automation
      class FlowIDWorkflowIDMappingResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::FlowIDWorkflowIDMappingResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :flow_id

        sig { returns(Integer) }
        attr_accessor :workflow_id

        sig do
          params(flow_id: Integer, workflow_id: Integer).returns(
            T.attached_class
          )
        end
        def self.new(flow_id:, workflow_id:)
        end

        sig { override.returns({ flow_id: Integer, workflow_id: Integer }) }
        def to_hash
        end
      end
    end
  end
end
