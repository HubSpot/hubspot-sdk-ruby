# typed: strong

module HubSpotSDK
  module Models
    module Settings
      class PublicTaxRateGroup < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Settings::PublicTaxRateGroup,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the tax rate.
        sig { returns(String) }
        attr_accessor :id

        # Indicates whether the tax rate group is currently active.
        sig { returns(T::Boolean) }
        attr_accessor :active

        # The date and time when the tax rate was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The display label for the tax rate.
        sig { returns(String) }
        attr_accessor :label

        # The name of the tax rate.
        sig { returns(String) }
        attr_accessor :name

        # The percentage rate applied.
        sig { returns(Float) }
        attr_accessor :percentage_rate

        # The date and time when the tax rate was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            active: T::Boolean,
            created_at: Time,
            label: String,
            name: String,
            percentage_rate: Float,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the tax rate.
          id:,
          # Indicates whether the tax rate group is currently active.
          active:,
          # The date and time when the tax rate was created.
          created_at:,
          # The display label for the tax rate.
          label:,
          # The name of the tax rate.
          name:,
          # The percentage rate applied.
          percentage_rate:,
          # The date and time when the tax rate was last updated.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              active: T::Boolean,
              created_at: Time,
              label: String,
              name: String,
              percentage_rate: Float,
              updated_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
