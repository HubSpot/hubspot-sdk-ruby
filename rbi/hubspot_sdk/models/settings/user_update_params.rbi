# typed: strong

module HubspotSDK
  module Models
    module Settings
      class UserUpdateParams < HubspotSDK::Models::Settings::PublicUserUpdate
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::UserUpdateParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :user_id

        sig do
          returns(
            T.nilable(
              HubspotSDK::Settings::PublicUserUpdate::IDProperty::OrSymbol
            )
          )
        end
        attr_reader :id_property

        sig do
          params(
            id_property:
              HubspotSDK::Settings::PublicUserUpdate::IDProperty::OrSymbol
          ).void
        end
        attr_writer :id_property

        sig do
          params(
            user_id: String,
            id_property:
              HubspotSDK::Settings::PublicUserUpdate::IDProperty::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(user_id:, id_property: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              user_id: String,
              id_property:
                HubspotSDK::Settings::PublicUserUpdate::IDProperty::OrSymbol,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module IDProperty
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Settings::PublicUserUpdate::IDProperty)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::Settings::PublicUserUpdate::IDProperty::TaggedSymbol
            )
          USER_ID =
            T.let(
              :USER_ID,
              HubspotSDK::Settings::PublicUserUpdate::IDProperty::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Settings::PublicUserUpdate::IDProperty::TaggedSymbol
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
