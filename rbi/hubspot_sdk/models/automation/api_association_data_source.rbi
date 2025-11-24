# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIAssociationDataSource < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIAssociationDataSource,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Automation::APIAssociationDataSource::AssociationCategory::OrSymbol
          )
        end
        attr_accessor :association_category

        sig { returns(Integer) }
        attr_accessor :association_type_id

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :object_type_id

        sig do
          returns(
            HubspotSDK::Automation::APIAssociationDataSource::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(HubspotSDK::Automation::APISort)) }
        attr_reader :sort_by

        sig { params(sort_by: HubspotSDK::Automation::APISort::OrHash).void }
        attr_writer :sort_by

        sig do
          params(
            association_category:
              HubspotSDK::Automation::APIAssociationDataSource::AssociationCategory::OrSymbol,
            association_type_id: Integer,
            name: String,
            object_type_id: String,
            type:
              HubspotSDK::Automation::APIAssociationDataSource::Type::OrSymbol,
            sort_by: HubspotSDK::Automation::APISort::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          association_category:,
          association_type_id:,
          name:,
          object_type_id:,
          type:,
          sort_by: nil
        )
        end

        sig do
          override.returns(
            {
              association_category:
                HubspotSDK::Automation::APIAssociationDataSource::AssociationCategory::OrSymbol,
              association_type_id: Integer,
              name: String,
              object_type_id: String,
              type:
                HubspotSDK::Automation::APIAssociationDataSource::Type::OrSymbol,
              sort_by: HubspotSDK::Automation::APISort
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
                HubspotSDK::Automation::APIAssociationDataSource::AssociationCategory
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUBSPOT_DEFINED =
            T.let(
              :HUBSPOT_DEFINED,
              HubspotSDK::Automation::APIAssociationDataSource::AssociationCategory::TaggedSymbol
            )
          INTEGRATOR_DEFINED =
            T.let(
              :INTEGRATOR_DEFINED,
              HubspotSDK::Automation::APIAssociationDataSource::AssociationCategory::TaggedSymbol
            )
          USER_DEFINED =
            T.let(
              :USER_DEFINED,
              HubspotSDK::Automation::APIAssociationDataSource::AssociationCategory::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIAssociationDataSource::AssociationCategory::TaggedSymbol
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
                HubspotSDK::Automation::APIAssociationDataSource::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASSOCIATION =
            T.let(
              :ASSOCIATION,
              HubspotSDK::Automation::APIAssociationDataSource::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIAssociationDataSource::Type::TaggedSymbol
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
