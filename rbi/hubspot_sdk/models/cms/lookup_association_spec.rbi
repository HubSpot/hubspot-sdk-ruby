# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class LookupAssociationSpec < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::LookupAssociationSpec,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Defines the type, direction, and details of the relationship between two CRM
        # objects.
        sig { returns(HubSpotSDK::AssociationSpec) }
        attr_reader :association_spec

        sig do
          params(association_spec: HubSpotSDK::AssociationSpec::OrHash).void
        end
        attr_writer :association_spec

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Cms::LookupAssociationSpec::Cardinality::TaggedSymbol
            )
          )
        end
        attr_reader :cardinality

        sig do
          params(
            cardinality:
              HubSpotSDK::Cms::LookupAssociationSpec::Cardinality::OrSymbol
          ).void
        end
        attr_writer :cardinality

        sig { returns(T.nilable(Integer)) }
        attr_reader :max_to_object_ids

        sig { params(max_to_object_ids: Integer).void }
        attr_writer :max_to_object_ids

        sig { returns(T.nilable(String)) }
        attr_reader :to_object_type_id

        sig { params(to_object_type_id: String).void }
        attr_writer :to_object_type_id

        sig do
          params(
            association_spec: HubSpotSDK::AssociationSpec::OrHash,
            cardinality:
              HubSpotSDK::Cms::LookupAssociationSpec::Cardinality::OrSymbol,
            max_to_object_ids: Integer,
            to_object_type_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Defines the type, direction, and details of the relationship between two CRM
          # objects.
          association_spec:,
          cardinality: nil,
          max_to_object_ids: nil,
          to_object_type_id: nil
        )
        end

        sig do
          override.returns(
            {
              association_spec: HubSpotSDK::AssociationSpec,
              cardinality:
                HubSpotSDK::Cms::LookupAssociationSpec::Cardinality::TaggedSymbol,
              max_to_object_ids: Integer,
              to_object_type_id: String
            }
          )
        end
        def to_hash
        end

        module Cardinality
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::LookupAssociationSpec::Cardinality)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TO_MANY =
            T.let(
              :ONE_TO_MANY,
              HubSpotSDK::Cms::LookupAssociationSpec::Cardinality::TaggedSymbol
            )
          ONE_TO_ONE =
            T.let(
              :ONE_TO_ONE,
              HubSpotSDK::Cms::LookupAssociationSpec::Cardinality::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::LookupAssociationSpec::Cardinality::TaggedSymbol
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
