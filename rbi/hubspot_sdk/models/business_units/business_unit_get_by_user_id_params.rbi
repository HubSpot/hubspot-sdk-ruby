# typed: strong

module HubspotSDK
  module Models
    module BusinessUnits
      class BusinessUnitGetByUserIDParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::BusinessUnits::BusinessUnitGetByUserIDParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The names of Business Units to retrieve. If empty or not provided, then all
        # associated Business Units will be returned.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :name

        sig { params(name: T::Array[String]).void }
        attr_writer :name

        # The names of properties to optionally include in the response body. The only
        # valid value is `logoMetadata`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        sig do
          params(
            name: T::Array[String],
            properties: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The names of Business Units to retrieve. If empty or not provided, then all
          # associated Business Units will be returned.
          name: nil,
          # The names of properties to optionally include in the response body. The only
          # valid value is `logoMetadata`.
          properties: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: T::Array[String],
              properties: T::Array[String],
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
