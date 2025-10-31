# typed: strong

module HubspotSDK
  module Models
    module CRM
      class OwnerGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::OwnerGetParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig do
          returns(
            T.nilable(HubspotSDK::CRM::OwnerGetParams::IDProperty::OrSymbol)
          )
        end
        attr_reader :id_property

        sig do
          params(
            id_property: HubspotSDK::CRM::OwnerGetParams::IDProperty::OrSymbol
          ).void
        end
        attr_writer :id_property

        sig do
          params(
            archived: T::Boolean,
            id_property: HubspotSDK::CRM::OwnerGetParams::IDProperty::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(archived: nil, id_property: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              archived: T::Boolean,
              id_property:
                HubspotSDK::CRM::OwnerGetParams::IDProperty::OrSymbol,
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
              T.all(Symbol, HubspotSDK::CRM::OwnerGetParams::IDProperty)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ID =
            T.let(
              :id,
              HubspotSDK::CRM::OwnerGetParams::IDProperty::TaggedSymbol
            )
          USER_ID =
            T.let(
              :userId,
              HubspotSDK::CRM::OwnerGetParams::IDProperty::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::OwnerGetParams::IDProperty::TaggedSymbol
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
