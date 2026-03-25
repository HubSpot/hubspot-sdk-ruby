# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class DefinitionListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::DefinitionListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier of the business unit for which to retrieve the
        # subscription definitions.
        sig { returns(T.nilable(Integer)) }
        attr_reader :business_unit_id

        sig { params(business_unit_id: Integer).void }
        attr_writer :business_unit_id

        # A boolean indicating whether to include translations of the subscription
        # definitions. Defaults to false if not specified.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_translations

        sig { params(include_translations: T::Boolean).void }
        attr_writer :include_translations

        sig do
          params(
            business_unit_id: Integer,
            include_translations: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the business unit for which to retrieve the
          # subscription definitions.
          business_unit_id: nil,
          # A boolean indicating whether to include translations of the subscription
          # definitions. Defaults to false if not specified.
          include_translations: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              business_unit_id: Integer,
              include_translations: T::Boolean,
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
