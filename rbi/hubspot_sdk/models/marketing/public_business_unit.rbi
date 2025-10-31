# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicBusinessUnit < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicBusinessUnit,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :id

        sig { params(id: Integer).returns(T.attached_class) }
        def self.new(id:)
        end

        sig { override.returns({ id: Integer }) }
        def to_hash
        end
      end
    end
  end
end
