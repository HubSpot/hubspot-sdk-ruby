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

        # The unique identifier for the business unit, represented as an integer.
        sig { returns(Integer) }
        attr_accessor :id

        sig { params(id: Integer).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the business unit, represented as an integer.
          id:
        )
        end

        sig { override.returns({ id: Integer }) }
        def to_hash
        end
      end
    end
  end
end
