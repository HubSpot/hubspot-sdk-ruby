# typed: strong

module HubspotSDK
  module Models
    module Cms
      class FieldLevelPermission < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::FieldLevelPermission,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :access_level

        sig { params(access_level: String).returns(T.attached_class) }
        def self.new(access_level:)
        end

        sig { override.returns({ access_level: String }) }
        def to_hash
        end
      end
    end
  end
end
