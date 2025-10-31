# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIEnrolledRecordPropertyFilterDataSource < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIEnrolledRecordPropertyFilterDataSource,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :property_name

        sig { returns(String) }
        attr_accessor :record_field_name

        sig do
          returns(
            HubspotSDK::Automation::APIEnrolledRecordPropertyFilterDataSource::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(HubspotSDK::Automation::APISort)) }
        attr_reader :sort_by

        sig { params(sort_by: HubspotSDK::Automation::APISort::OrHash).void }
        attr_writer :sort_by

        sig do
          params(
            name: String,
            property_name: String,
            record_field_name: String,
            type:
              HubspotSDK::Automation::APIEnrolledRecordPropertyFilterDataSource::Type::OrSymbol,
            sort_by: HubspotSDK::Automation::APISort::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          name:,
          property_name:,
          record_field_name:,
          type:,
          sort_by: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              property_name: String,
              record_field_name: String,
              type:
                HubspotSDK::Automation::APIEnrolledRecordPropertyFilterDataSource::Type::OrSymbol,
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
                HubspotSDK::Automation::APIEnrolledRecordPropertyFilterDataSource::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENROLLED_RECORD_PROPERTY_FILTER =
            T.let(
              :ENROLLED_RECORD_PROPERTY_FILTER,
              HubspotSDK::Automation::APIEnrolledRecordPropertyFilterDataSource::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIEnrolledRecordPropertyFilterDataSource::Type::TaggedSymbol
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
