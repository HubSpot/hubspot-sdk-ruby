# typed: strong

module HubspotSDK
  module Models
    module Automation
      class SequenceGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::SequenceGetParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :sequence_id

        # The unique identifier of the user requesting the sequence details. This
        # parameter is required.
        sig { returns(String) }
        attr_accessor :user_id

        sig do
          params(
            sequence_id: String,
            user_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          sequence_id:,
          # The unique identifier of the user requesting the sequence details. This
          # parameter is required.
          user_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              sequence_id: String,
              user_id: String,
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
