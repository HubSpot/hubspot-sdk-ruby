# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIAssociationTimestampDataSource < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIAssociationTimestampDataSource,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Automation::APIAssociationTimestampDataSource::AssociationCategory::OrSymbol
          )
        end
        attr_accessor :association_category

        # The ID representing the type of association.
        sig { returns(Integer) }
        attr_accessor :association_type_id

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :object_type_id

        sig do
          returns(
            HubspotSDK::Automation::APIAssociationTimestampDataSource::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            association_category:
              HubspotSDK::Automation::APIAssociationTimestampDataSource::AssociationCategory::OrSymbol,
            association_type_id: Integer,
            name: String,
            object_type_id: String,
            type:
              HubspotSDK::Automation::APIAssociationTimestampDataSource::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          association_category:,
          # The ID representing the type of association.
          association_type_id:,
          name:,
          object_type_id:,
          type:
        )
        end

        sig do
          override.returns(
            {
              association_category:
                HubspotSDK::Automation::APIAssociationTimestampDataSource::AssociationCategory::OrSymbol,
              association_type_id: Integer,
              name: String,
              object_type_id: String,
              type:
                HubspotSDK::Automation::APIAssociationTimestampDataSource::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module AssociationCategory
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIAssociationTimestampDataSource::AssociationCategory
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUBSPOT_DEFINED =
            T.let(
              :HUBSPOT_DEFINED,
              HubspotSDK::Automation::APIAssociationTimestampDataSource::AssociationCategory::TaggedSymbol
            )
          USER_DEFINED =
            T.let(
              :USER_DEFINED,
              HubspotSDK::Automation::APIAssociationTimestampDataSource::AssociationCategory::TaggedSymbol
            )
          INTEGRATOR_DEFINED =
            T.let(
              :INTEGRATOR_DEFINED,
              HubspotSDK::Automation::APIAssociationTimestampDataSource::AssociationCategory::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIAssociationTimestampDataSource::AssociationCategory::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIAssociationTimestampDataSource::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASSOCIATION_TIMESTAMP =
            T.let(
              :ASSOCIATION_TIMESTAMP,
              HubspotSDK::Automation::APIAssociationTimestampDataSource::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIAssociationTimestampDataSource::Type::TaggedSymbol
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
