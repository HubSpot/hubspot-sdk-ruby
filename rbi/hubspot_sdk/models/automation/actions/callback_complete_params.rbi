# typed: strong

module HubspotSDK
  module Models
    module Automation
      module Actions
        class CallbackCompleteParams < HubspotSDK::Models::Automation::CallbackCompletionRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Automation::Actions::CallbackCompleteParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :callback_id

          sig do
            params(
              callback_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(callback_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                callback_id: String,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
