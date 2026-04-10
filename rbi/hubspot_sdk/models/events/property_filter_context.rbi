# typed: strong

module HubSpotSDK
  module Models
    module Events
      class PropertyFilterContext < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::PropertyFilterContext,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { params(object_type_id: String).returns(T.attached_class) }
        def self.new(object_type_id:)
        end

        sig { override.returns({ object_type_id: String }) }
        def to_hash
        end
      end
    end
  end
end
