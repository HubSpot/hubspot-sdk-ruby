# typed: strong

module HubspotSDK
  module Models
    module Settings
      class UserGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::UserGetParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The name of a property with unique user values. Valid values are
        # `USER_ID`(default) or `EMAIL`
        sig do
          returns(
            T.nilable(HubspotSDK::Settings::UserGetParams::IDProperty::OrSymbol)
          )
        end
        attr_reader :id_property

        sig do
          params(
            id_property:
              HubspotSDK::Settings::UserGetParams::IDProperty::OrSymbol
          ).void
        end
        attr_writer :id_property

        sig do
          params(
            id_property:
              HubspotSDK::Settings::UserGetParams::IDProperty::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of a property with unique user values. Valid values are
          # `USER_ID`(default) or `EMAIL`
          id_property: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id_property:
                HubspotSDK::Settings::UserGetParams::IDProperty::OrSymbol,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The name of a property with unique user values. Valid values are
        # `USER_ID`(default) or `EMAIL`
        module IDProperty
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Settings::UserGetParams::IDProperty)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USER_ID =
            T.let(
              :USER_ID,
              HubspotSDK::Settings::UserGetParams::IDProperty::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::Settings::UserGetParams::IDProperty::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Settings::UserGetParams::IDProperty::TaggedSymbol
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
