# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicBudgetItemInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicBudgetItemInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The monetary value assigned to the budget item.
        sig { returns(Float) }
        attr_accessor :amount

        # The name of the budget item.
        sig { returns(String) }
        attr_accessor :name

        # The sequence number indicating the order of the budget item.
        sig { returns(Integer) }
        attr_accessor :order

        # A detailed explanation or notes about the budget item.
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
        def self.new(
          # The monetary value assigned to the budget item.
          amount:,
          # The name of the budget item.
          name:,
          # The sequence number indicating the order of the budget item.
          order:,
          # A detailed explanation or notes about the budget item.
          description: nil
        )
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
