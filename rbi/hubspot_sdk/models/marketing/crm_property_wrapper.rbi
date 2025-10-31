# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class CRMPropertyWrapper < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::CRMPropertyWrapper,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :value

        sig { params(name: String, value: String).returns(T.attached_class) }
        def self.new(name:, value:)
        end

        sig { override.returns({ name: String, value: String }) }
        def to_hash
        end
      end
    end
  end
end
