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

        # Unique identifier for the spend item.
        sig { returns(String) }
        attr_accessor :id

        # The monetary value associated with the spend item.
        sig { returns(Float) }
        attr_accessor :amount

        # The timestamp indicating when the spend item was created.
        sig { returns(Integer) }
        attr_accessor :created_at

        # The name assigned to the spend item.
        sig { returns(String) }
        attr_accessor :name

        # The sequence order of the spend item, where 0 is the oldest.
        sig { returns(Integer) }
        attr_accessor :order

        # The timestamp indicating when the spend item was last updated.
        sig { returns(Integer) }
        attr_accessor :updated_at

        # A detailed explanation or notes about the spend item.
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
          # Unique identifier for the spend item.
          id:,
          # The monetary value associated with the spend item.
          amount:,
          # The timestamp indicating when the spend item was created.
          created_at:,
          # The name assigned to the spend item.
          name:,
          # The sequence order of the spend item, where 0 is the oldest.
          order:,
          # The timestamp indicating when the spend item was last updated.
          updated_at:,
          # A detailed explanation or notes about the spend item.
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
