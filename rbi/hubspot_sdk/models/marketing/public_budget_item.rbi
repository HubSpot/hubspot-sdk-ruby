# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class PublicBudgetItem < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::PublicBudgetItem,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the budget item.
        sig { returns(String) }
        attr_accessor :id

        # The monetary amount allocated for the budget item.
        sig { returns(Float) }
        attr_accessor :amount

        # The timestamp when the budget item was created.
        sig { returns(Integer) }
        attr_accessor :created_at

        # The name of the budget item.
        sig { returns(String) }
        attr_accessor :name

        # The order of the budget item, indicating its sequence based on creation date.
        sig { returns(Integer) }
        attr_accessor :order

        # The timestamp when the budget item was last updated.
        sig { returns(Integer) }
        attr_accessor :updated_at

        # A description of the budget item.
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
          # The unique identifier for the budget item.
          id:,
          # The monetary amount allocated for the budget item.
          amount:,
          # The timestamp when the budget item was created.
          created_at:,
          # The name of the budget item.
          name:,
          # The order of the budget item, indicating its sequence based on creation date.
          order:,
          # The timestamp when the budget item was last updated.
          updated_at:,
          # A description of the budget item.
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
