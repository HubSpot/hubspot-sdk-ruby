# typed: strong

module HubspotSDK
  module Models
    module Cms
      class MediaBridgeProviderPartial < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::MediaBridgeProviderPartial,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(updated_at: Integer, name: String).returns(T.attached_class)
        end
        def self.new(updated_at:, name: nil)
        end

        sig { override.returns({ updated_at: Integer, name: String }) }
        def to_hash
        end
      end
    end
  end
end
