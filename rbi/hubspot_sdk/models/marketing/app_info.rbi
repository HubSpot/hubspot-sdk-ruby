# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class AppInfo < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Marketing::AppInfo, HubspotSDK::Internal::AnyHash)
          end

        # The ID of the application
        sig { returns(String) }
        attr_accessor :id

        # The name of the application
        sig { returns(String) }
        attr_accessor :name

        sig { params(id: String, name: String).returns(T.attached_class) }
        def self.new(
          # The ID of the application
          id:,
          # The name of the application
          name:
        )
        end

        sig { override.returns({ id: String, name: String }) }
        def to_hash
        end
      end
    end
  end
end
