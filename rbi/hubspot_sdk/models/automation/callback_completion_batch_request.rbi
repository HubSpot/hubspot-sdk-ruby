# typed: strong

module HubspotSDK
  module Models
    module Automation
      class CallbackCompletionBatchRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::CallbackCompletionBatchRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :callback_id

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :output_fields

        sig do
          params(
            callback_id: String,
            output_fields: T::Hash[Symbol, String]
          ).returns(T.attached_class)
        end
        def self.new(callback_id:, output_fields:)
        end

        sig do
          override.returns(
            { callback_id: String, output_fields: T::Hash[Symbol, String] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
