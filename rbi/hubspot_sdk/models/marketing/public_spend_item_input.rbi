# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicSpendItemInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicSpendItemInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Float) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Integer) }
        attr_accessor :order

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig do
          params(
            amount: Float,
            name: String,
            order: Integer,
            description: String
          ).returns(T.attached_class)
        end
        def self.new(amount:, name:, order:, description: nil)
        end

        sig do
          override.returns(
            { amount: Float, name: String, order: Integer, description: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
