# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class OwnerGetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::OwnerGetParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :owner_id

        # Whether to return only results that have been archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig do
          returns(
            T.nilable(HubSpotSDK::Crm::OwnerGetParams::IDProperty::OrSymbol)
          )
        end
        attr_reader :id_property

        sig do
          params(
            id_property: HubSpotSDK::Crm::OwnerGetParams::IDProperty::OrSymbol
          ).void
        end
        attr_writer :id_property

        sig do
          params(
            owner_id: Integer,
            archived: T::Boolean,
            id_property: HubSpotSDK::Crm::OwnerGetParams::IDProperty::OrSymbol,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          owner_id:,
          # Whether to return only results that have been archived.
          archived: nil,
          id_property: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              owner_id: Integer,
              archived: T::Boolean,
              id_property:
                HubSpotSDK::Crm::OwnerGetParams::IDProperty::OrSymbol,
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
              T.all(Symbol, HubSpotSDK::Crm::OwnerGetParams::IDProperty)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ID =
            T.let(
              :id,
              HubSpotSDK::Crm::OwnerGetParams::IDProperty::TaggedSymbol
            )
          USER_ID =
            T.let(
              :userId,
              HubSpotSDK::Crm::OwnerGetParams::IDProperty::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::OwnerGetParams::IDProperty::TaggedSymbol
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
