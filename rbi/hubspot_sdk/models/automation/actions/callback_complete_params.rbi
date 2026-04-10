# typed: strong

module HubSpotSDK
  module Models
    module Automation
      module Actions
        class CallbackCompleteParams < HubSpotSDK::Models::Automation::CallbackCompletionRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Automation::Actions::CallbackCompleteParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :callback_id

          sig do
            params(
              callback_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(callback_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                callback_id: String,
                request_options: HubSpotSDK::RequestOptions
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
