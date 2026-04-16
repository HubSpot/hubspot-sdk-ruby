# typed: strong

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class DefinitionListParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::CommunicationPreferences::DefinitionListParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An integer representing the ID of the business unit for which to retrieve
        # subscription definitions.
        sig { returns(T.nilable(Integer)) }
        attr_reader :business_unit_id

        sig { params(business_unit_id: Integer).void }
        attr_writer :business_unit_id

        # A boolean indicating whether to include translations of the communication
        # preferences definitions in the response.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_translations

        sig { params(include_translations: T::Boolean).void }
        attr_writer :include_translations

        sig do
          params(
            business_unit_id: Integer,
            include_translations: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # An integer representing the ID of the business unit for which to retrieve
          # subscription definitions.
          business_unit_id: nil,
          # A boolean indicating whether to include translations of the communication
          # preferences definitions in the response.
          include_translations: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              business_unit_id: Integer,
              include_translations: T::Boolean,
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
