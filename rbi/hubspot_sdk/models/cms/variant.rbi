# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Variant < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Variant, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end
    end
  end
end
