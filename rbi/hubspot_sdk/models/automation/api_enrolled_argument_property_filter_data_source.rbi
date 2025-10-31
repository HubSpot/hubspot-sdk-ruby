# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIEnrolledArgumentPropertyFilterDataSource < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIEnrolledArgumentPropertyFilterDataSource,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :argument_name

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :property_name

        sig do
          returns(
            HubspotSDK::Automation::APIEnrolledArgumentPropertyFilterDataSource::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(HubspotSDK::Automation::APISort)) }
        attr_reader :sort_by

        sig { params(sort_by: HubspotSDK::Automation::APISort::OrHash).void }
        attr_writer :sort_by

        sig do
          params(
            argument_name: String,
            name: String,
            property_name: String,
            type:
              HubspotSDK::Automation::APIEnrolledArgumentPropertyFilterDataSource::Type::OrSymbol,
            sort_by: HubspotSDK::Automation::APISort::OrHash
          ).returns(T.attached_class)
        end
        def self.new(argument_name:, name:, property_name:, type:, sort_by: nil)
        end

        sig do
          override.returns(
            {
              argument_name: String,
              name: String,
              property_name: String,
              type:
                HubspotSDK::Automation::APIEnrolledArgumentPropertyFilterDataSource::Type::OrSymbol,
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
                HubspotSDK::Automation::APIEnrolledArgumentPropertyFilterDataSource::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENROLLED_ARGUMENT_PROPERTY_FILTER =
            T.let(
              :ENROLLED_ARGUMENT_PROPERTY_FILTER,
              HubspotSDK::Automation::APIEnrolledArgumentPropertyFilterDataSource::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIEnrolledArgumentPropertyFilterDataSource::Type::TaggedSymbol
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
