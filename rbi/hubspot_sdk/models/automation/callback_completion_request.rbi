# typed: strong

module HubspotSDK
  module Models
    module Automation
      class CallbackCompletionRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::CallbackCompletionRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :output_fields

        sig do
          params(output_fields: T::Hash[Symbol, String]).returns(
            T.attached_class
          )
        end
        def self.new(output_fields:)
        end

        sig { override.returns({ output_fields: T::Hash[Symbol, String] }) }
        def to_hash
        end
      end
    end
  end
end
