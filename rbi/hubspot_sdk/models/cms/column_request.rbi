# typed: strong

module HubspotSDK
  module Models
    module Cms
      class ColumnRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::ColumnRequest, HubspotSDK::Internal::AnyHash)
          end

        # Column Id
        sig { returns(Integer) }
        attr_accessor :id

        # Label of the column
        sig { returns(String) }
        attr_accessor :label

        # Name of the column
        sig { returns(String) }
        attr_accessor :name

        # Options to choose for select and multi-select columns
        sig { returns(T::Array[HubspotSDK::Cms::Option]) }
        attr_accessor :options

        # Type of the column
        sig { returns(HubspotSDK::Cms::ColumnRequest::Type::OrSymbol) }
        attr_accessor :type

        # The id of the column from another table to which the column refers/points to.
        sig { returns(T.nilable(Integer)) }
        attr_reader :foreign_column_id

        sig { params(foreign_column_id: Integer).void }
        attr_writer :foreign_column_id

        # The id of another table to which the column refers/points to.
        sig { returns(T.nilable(Integer)) }
        attr_reader :foreign_table_id

        sig { params(foreign_table_id: Integer).void }
        attr_writer :foreign_table_id

        # Defines the maximum number of characters allowed in the column.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_number_of_characters

        sig { params(max_number_of_characters: Integer).void }
        attr_writer :max_number_of_characters

        # Specifies the maximum number of options that can be set for select and
        # multi-select columns.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_number_of_options

        sig { params(max_number_of_options: Integer).void }
        attr_writer :max_number_of_options

        sig do
          params(
            id: Integer,
            label: String,
            name: String,
            options: T::Array[HubspotSDK::Cms::Option::OrHash],
            type: HubspotSDK::Cms::ColumnRequest::Type::OrSymbol,
            foreign_column_id: Integer,
            foreign_table_id: Integer,
            max_number_of_characters: Integer,
            max_number_of_options: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Column Id
          id:,
          # Label of the column
          label:,
          # Name of the column
          name:,
          # Options to choose for select and multi-select columns
          options:,
          # Type of the column
          type:,
          # The id of the column from another table to which the column refers/points to.
          foreign_column_id: nil,
          # The id of another table to which the column refers/points to.
          foreign_table_id: nil,
          # Defines the maximum number of characters allowed in the column.
          max_number_of_characters: nil,
          # Specifies the maximum number of options that can be set for select and
          # multi-select columns.
          max_number_of_options: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              label: String,
              name: String,
              options: T::Array[HubspotSDK::Cms::Option],
              type: HubspotSDK::Cms::ColumnRequest::Type::OrSymbol,
              foreign_column_id: Integer,
              foreign_table_id: Integer,
              max_number_of_characters: Integer,
              max_number_of_options: Integer
            }
          )
        end
        def to_hash
        end

        # Type of the column
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::ColumnRequest::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEAN =
            T.let(:BOOLEAN, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          CODE =
            T.let(:CODE, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          COMPOSITE =
            T.let(
              :COMPOSITE,
              HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol
            )
          CTA = T.let(:CTA, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          CURRENCY =
            T.let(:CURRENCY, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          DATE =
            T.let(:DATE, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          DATETIME =
            T.let(:DATETIME, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          EMBED =
            T.let(:EMBED, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          FILE =
            T.let(:FILE, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          FOREIGN_ID =
            T.let(
              :FOREIGN_ID,
              HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol
            )
          HUBSPOT_VIDEO =
            T.let(
              :HUBSPOT_VIDEO,
              HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol
            )
          IMAGE =
            T.let(:IMAGE, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          JSON =
            T.let(:JSON, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          LOCATION =
            T.let(:LOCATION, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          MULTISELECT =
            T.let(
              :MULTISELECT,
              HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol
            )
          NULL =
            T.let(:NULL, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          NUMBER =
            T.let(:NUMBER, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          RICHTEXT =
            T.let(:RICHTEXT, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          SELECT =
            T.let(:SELECT, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          TEXT =
            T.let(:TEXT, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          URL = T.let(:URL, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          VIDEO =
            T.let(:VIDEO, HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::ColumnRequest::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
