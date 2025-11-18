# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class MessageGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::MessageGetParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :thread_id

        # A specific property to include in the message response.
        sig { returns(T.nilable(String)) }
        attr_reader :property

        sig { params(property: String).void }
        attr_writer :property

        sig do
          params(
            thread_id: Integer,
            property: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          thread_id:,
          # A specific property to include in the message response.
          property: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              thread_id: Integer,
              property: String,
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
