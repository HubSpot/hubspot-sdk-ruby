# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicCampaign < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicCampaign,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Array[HubspotSDK::Marketing::PublicBusinessUnit]) }
        attr_accessor :business_units

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            business_units:
              T::Array[HubspotSDK::Marketing::PublicBusinessUnit::OrHash],
            created_at: Time,
            properties: T::Hash[Symbol, String],
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          business_units:,
          created_at:,
          properties:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              business_units:
                T::Array[HubspotSDK::Marketing::PublicBusinessUnit],
              created_at: Time,
              properties: T::Hash[Symbol, String],
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
