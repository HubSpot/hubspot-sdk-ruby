# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ActorBatchReadParams < HubspotSDK::Models::BatchInputString
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ActorBatchReadParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A specific property to include in the actor response.
        sig { returns(T.nilable(String)) }
        attr_reader :property

        sig { params(property: String).void }
        attr_writer :property

        sig do
          params(
            property: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A specific property to include in the actor response.
          property: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { property: String, request_options: HubspotSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
