# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class ColumnRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::ColumnRequest, HubSpotSDK::Internal::AnyHash)
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
        sig { returns(T::Array[HubSpotSDK::Cms::HubdbOption]) }
        attr_accessor :options

        # Type of the column
        sig { returns(HubSpotSDK::Cms::ColumnRequest::Type::OrSymbol) }
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
            options: T::Array[HubSpotSDK::Cms::HubdbOption::OrHash],
            type: HubSpotSDK::Cms::ColumnRequest::Type::OrSymbol,
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
              options: T::Array[HubSpotSDK::Cms::HubdbOption],
              type: HubSpotSDK::Cms::ColumnRequest::Type::OrSymbol,
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
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubSpotSDK::Cms::ColumnRequest::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEAN =
            T.let(:BOOLEAN, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          CODE =
            T.let(:CODE, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          COMPOSITE =
            T.let(
              :COMPOSITE,
              HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol
            )
          CTA = T.let(:CTA, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          CURRENCY =
            T.let(:CURRENCY, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          DATE =
            T.let(:DATE, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          DATETIME =
            T.let(:DATETIME, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          EMBED =
            T.let(:EMBED, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          FILE =
            T.let(:FILE, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          FOREIGN_ID =
            T.let(
              :FOREIGN_ID,
              HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol
            )
          HUBSPOT_VIDEO =
            T.let(
              :HUBSPOT_VIDEO,
              HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol
            )
          IMAGE =
            T.let(:IMAGE, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          JSON =
            T.let(:JSON, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          LOCATION =
            T.let(:LOCATION, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          MULTISELECT =
            T.let(
              :MULTISELECT,
              HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol
            )
          NULL =
            T.let(:NULL, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          NUMBER =
            T.let(:NUMBER, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          RICHTEXT =
            T.let(:RICHTEXT, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          SELECT =
            T.let(:SELECT, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          TEXT =
            T.let(:TEXT, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          URL = T.let(:URL, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)
          VIDEO =
            T.let(:VIDEO, HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::ColumnRequest::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
