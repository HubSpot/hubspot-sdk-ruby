# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicSpendItem < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicSpendItem,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Float) }
        attr_accessor :amount

        sig { returns(Integer) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Integer) }
        attr_accessor :order

        sig { returns(Integer) }
        attr_accessor :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig do
          params(
            id: String,
            amount: Float,
            created_at: Integer,
            name: String,
            order: Integer,
            updated_at: Integer,
            description: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          amount:,
          created_at:,
          name:,
          order:,
          updated_at:,
          description: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Float,
              created_at: Integer,
              name: String,
              order: Integer,
              updated_at: Integer,
              description: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
