# typed: strong

module HubspotSDK
  module Models
    module Cms
      class ObjectTypeIDProto < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::ObjectTypeIDProto,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :inner_id

        sig { returns(Integer) }
        attr_accessor :meta_type_id

        sig do
          params(inner_id: Integer, meta_type_id: Integer).returns(
            T.attached_class
          )
        end
        def self.new(inner_id:, meta_type_id:)
        end

        sig { override.returns({ inner_id: Integer, meta_type_id: Integer }) }
        def to_hash
        end
      end
    end
  end
end
