# typed: strong

module HubSpotSDK
  module Models
    module BusinessUnits
      class BusinessUnitEntryGetByUserIDParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::BusinessUnits::BusinessUnitEntryGetByUserIDParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :user_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :name

        sig { params(name: T::Array[String]).void }
        attr_writer :name

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        sig do
          params(
            user_id: String,
            name: T::Array[String],
            properties: T::Array[String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(user_id:, name: nil, properties: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              user_id: String,
              name: T::Array[String],
              properties: T::Array[String],
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
