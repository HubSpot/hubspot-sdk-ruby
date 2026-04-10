# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class Endpoints < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::Endpoints, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :discovery

        sig { returns(T::Array[String]) }
        attr_accessor :schemes

        sig { returns(String) }
        attr_accessor :url

        sig do
          params(
            discovery: T::Boolean,
            schemes: T::Array[String],
            url: String
          ).returns(T.attached_class)
        end
        def self.new(discovery:, schemes:, url:)
        end

        sig do
          override.returns(
            { discovery: T::Boolean, schemes: T::Array[String], url: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
