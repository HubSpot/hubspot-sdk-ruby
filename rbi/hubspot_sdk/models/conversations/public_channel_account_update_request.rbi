# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicChannelAccountUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicChannelAccountUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :authorized

        sig { params(authorized: T::Boolean).void }
        attr_writer :authorized

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(authorized: T::Boolean, name: String).returns(T.attached_class)
        end
        def self.new(authorized: nil, name: nil)
        end

        sig { override.returns({ authorized: T::Boolean, name: String }) }
        def to_hash
        end
      end
    end
  end
end
