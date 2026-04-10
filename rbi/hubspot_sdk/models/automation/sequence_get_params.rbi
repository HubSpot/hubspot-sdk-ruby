# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class SequenceGetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::SequenceGetParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :sequence_id

        sig { returns(String) }
        attr_accessor :user_id

        sig do
          params(
            sequence_id: String,
            user_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(sequence_id:, user_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              sequence_id: String,
              user_id: String,
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
