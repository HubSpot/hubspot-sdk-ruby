# typed: strong

module HubSpotSDK
  module Models
    module Settings
      class UserDeleteParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Settings::UserDeleteParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :user_id

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Settings::UserDeleteParams::IDProperty::OrSymbol
            )
          )
        end
        attr_reader :id_property

        sig do
          params(
            id_property:
              HubSpotSDK::Settings::UserDeleteParams::IDProperty::OrSymbol
          ).void
        end
        attr_writer :id_property

        sig do
          params(
            user_id: String,
            id_property:
              HubSpotSDK::Settings::UserDeleteParams::IDProperty::OrSymbol,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(user_id:, id_property: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              user_id: String,
              id_property:
                HubSpotSDK::Settings::UserDeleteParams::IDProperty::OrSymbol,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module IDProperty
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Settings::UserDeleteParams::IDProperty)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::Settings::UserDeleteParams::IDProperty::TaggedSymbol
            )
          USER_ID =
            T.let(
              :USER_ID,
              HubSpotSDK::Settings::UserDeleteParams::IDProperty::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Settings::UserDeleteParams::IDProperty::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
