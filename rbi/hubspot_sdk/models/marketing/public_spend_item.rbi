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

        # The unique identifier for the spend item, represented as a string.
        sig { returns(String) }
        attr_accessor :id

        # The monetary amount of the spend item, represented as a number.
        sig { returns(Float) }
        attr_accessor :amount

        # A Unix timestamp in milliseconds indicating when the spend item was created.
        sig { returns(Integer) }
        attr_accessor :created_at

        # The name of the spend item, represented as a string.
        sig { returns(String) }
        attr_accessor :name

        # An integer that specifies the order of the spend item.
        sig { returns(Integer) }
        attr_accessor :order

        # A Unix timestamp in milliseconds indicating when the spend item was last
        # updated.
        sig { returns(Integer) }
        attr_accessor :updated_at

        # A brief description of the spend item, represented as a string.
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
          # The unique identifier for the spend item, represented as a string.
          id:,
          # The monetary amount of the spend item, represented as a number.
          amount:,
          # A Unix timestamp in milliseconds indicating when the spend item was created.
          created_at:,
          # The name of the spend item, represented as a string.
          name:,
          # An integer that specifies the order of the spend item.
          order:,
          # A Unix timestamp in milliseconds indicating when the spend item was last
          # updated.
          updated_at:,
          # A brief description of the spend item, represented as a string.
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
