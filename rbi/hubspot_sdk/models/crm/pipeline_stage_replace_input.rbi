# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PipelineStageReplaceInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PipelineStageReplaceInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :display_order

        sig { returns(String) }
        attr_accessor :label

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig do
          params(
            display_order: Integer,
            label: String,
            metadata: T::Hash[Symbol, String]
          ).returns(T.attached_class)
        end
        def self.new(display_order:, label:, metadata:)
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
