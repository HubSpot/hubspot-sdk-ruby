# typed: strong

module HubspotSDK
  module Models
    module Settings
      class PublicTaxRateGroup < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::PublicTaxRateGroup,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :active

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :label

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Float) }
        attr_accessor :percentage_rate

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
          id:,
          active:,
          created_at:,
          label:,
          name:,
          percentage_rate:,
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
