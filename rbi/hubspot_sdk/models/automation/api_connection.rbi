# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIConnection < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIConnection,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :edge_type

        sig { returns(String) }
        attr_accessor :next_action_id

        sig do
          params(edge_type: String, next_action_id: String).returns(
            T.attached_class
          )
        end
        def self.new(edge_type:, next_action_id:)
        end

        sig { override.returns({ edge_type: String, next_action_id: String }) }
        def to_hash
        end
      end
    end
  end
end
