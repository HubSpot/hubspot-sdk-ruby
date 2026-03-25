# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class CrmPropertyWrapper < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::CrmPropertyWrapper,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The name of the property in the CRM
        sig { returns(String) }
        attr_accessor :name

        # The value of the property in the CRM
        sig { returns(String) }
        attr_accessor :value

        sig { params(name: String, value: String).returns(T.attached_class) }
        def self.new(
          # The name of the property in the CRM
          name:,
          # The value of the property in the CRM
          value:
        )
        end

        sig { override.returns({ name: String, value: String }) }
        def to_hash
        end
      end
    end
  end
end
