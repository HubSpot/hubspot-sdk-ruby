# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIDatasetFieldPropertyFilterDataSource < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIDatasetFieldPropertyFilterDataSource,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :dataset_field_name

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :property_name

        sig do
          returns(
            HubspotSDK::Automation::APIDatasetFieldPropertyFilterDataSource::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(HubspotSDK::Automation::APISort)) }
        attr_reader :sort_by

        sig { params(sort_by: HubspotSDK::Automation::APISort::OrHash).void }
        attr_writer :sort_by

        sig do
          params(
            dataset_field_name: String,
            name: String,
            property_name: String,
            type:
              HubspotSDK::Automation::APIDatasetFieldPropertyFilterDataSource::Type::OrSymbol,
            sort_by: HubspotSDK::Automation::APISort::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          dataset_field_name:,
          name:,
          property_name:,
          type:,
          sort_by: nil
        )
        end

        sig do
          override.returns(
            {
              dataset_field_name: String,
              name: String,
              property_name: String,
              type:
                HubspotSDK::Automation::APIDatasetFieldPropertyFilterDataSource::Type::OrSymbol,
              sort_by: HubspotSDK::Automation::APISort
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIDatasetFieldPropertyFilterDataSource::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATASET_FIELD_PROPERTY_FILTER =
            T.let(
              :DATASET_FIELD_PROPERTY_FILTER,
              HubspotSDK::Automation::APIDatasetFieldPropertyFilterDataSource::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIDatasetFieldPropertyFilterDataSource::Type::TaggedSymbol
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
