# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class Column < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::Column, HubSpotSDK::Internal::AnyHash)
          end

        # Column Id
        sig { returns(String) }
        attr_accessor :id

        # Indicates whether the column has been deleted.
        sig { returns(T::Boolean) }
        attr_accessor :deleted

        # The description of the column.
        sig { returns(String) }
        attr_accessor :description

        # Label of the column
        sig { returns(String) }
        attr_accessor :label

        # Name of the column
        sig { returns(String) }
        attr_accessor :name

        # Type of the column
        sig { returns(HubSpotSDK::Cms::Column::Type::TaggedSymbol) }
        attr_accessor :type

        # The timestamp when the column was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(HubSpotSDK::Cms::SimpleUser)) }
        attr_reader :created_by

        sig { params(created_by: HubSpotSDK::Cms::SimpleUser::OrHash).void }
        attr_writer :created_by

        # The ID of the user who created the column.
        sig { returns(T.nilable(Integer)) }
        attr_reader :created_by_user_id

        sig { params(created_by_user_id: Integer).void }
        attr_writer :created_by_user_id

        # Foreign Column id
        sig { returns(T.nilable(Integer)) }
        attr_reader :foreign_column_id

        sig { params(foreign_column_id: Integer).void }
        attr_writer :foreign_column_id

        # Foreign Ids
        sig { returns(T.nilable(T::Array[HubSpotSDK::Cms::ForeignID])) }
        attr_reader :foreign_ids

        sig do
          params(foreign_ids: T::Array[HubSpotSDK::Cms::ForeignID::OrHash]).void
        end
        attr_writer :foreign_ids

        # Foreign ids
        sig { returns(T.nilable(T::Hash[Symbol, HubSpotSDK::Cms::ForeignID])) }
        attr_reader :foreign_ids_by_id

        sig do
          params(
            foreign_ids_by_id:
              T::Hash[Symbol, HubSpotSDK::Cms::ForeignID::OrHash]
          ).void
        end
        attr_writer :foreign_ids_by_id

        # Foreign ids by name
        sig { returns(T.nilable(T::Hash[Symbol, HubSpotSDK::Cms::ForeignID])) }
        attr_reader :foreign_ids_by_name

        sig do
          params(
            foreign_ids_by_name:
              T::Hash[Symbol, HubSpotSDK::Cms::ForeignID::OrHash]
          ).void
        end
        attr_writer :foreign_ids_by_name

        # Foreign table id referenced
        sig { returns(T.nilable(Integer)) }
        attr_reader :foreign_table_id

        sig { params(foreign_table_id: Integer).void }
        attr_writer :foreign_table_id

        # Number of options available
        sig { returns(T.nilable(Integer)) }
        attr_reader :option_count

        sig { params(option_count: Integer).void }
        attr_writer :option_count

        # Options to choose for select and multi-select columns
        sig { returns(T.nilable(T::Array[HubSpotSDK::Cms::HubdbOption])) }
        attr_reader :options

        sig do
          params(options: T::Array[HubSpotSDK::Cms::HubdbOption::OrHash]).void
        end
        attr_writer :options

        # The timestamp when the column was last updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig { returns(T.nilable(HubSpotSDK::Cms::SimpleUser)) }
        attr_reader :updated_by

        sig { params(updated_by: HubSpotSDK::Cms::SimpleUser::OrHash).void }
        attr_writer :updated_by

        # The ID of the user who last updated the column.
        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_by_user_id

        sig { params(updated_by_user_id: Integer).void }
        attr_writer :updated_by_user_id

        # Column width for HubDB UI
        sig { returns(T.nilable(Integer)) }
        attr_reader :width

        sig { params(width: Integer).void }
        attr_writer :width

        sig do
          params(
            id: String,
            deleted: T::Boolean,
            description: String,
            label: String,
            name: String,
            type: HubSpotSDK::Cms::Column::Type::OrSymbol,
            created_at: Time,
            created_by: HubSpotSDK::Cms::SimpleUser::OrHash,
            created_by_user_id: Integer,
            foreign_column_id: Integer,
            foreign_ids: T::Array[HubSpotSDK::Cms::ForeignID::OrHash],
            foreign_ids_by_id:
              T::Hash[Symbol, HubSpotSDK::Cms::ForeignID::OrHash],
            foreign_ids_by_name:
              T::Hash[Symbol, HubSpotSDK::Cms::ForeignID::OrHash],
            foreign_table_id: Integer,
            option_count: Integer,
            options: T::Array[HubSpotSDK::Cms::HubdbOption::OrHash],
            updated_at: Time,
            updated_by: HubSpotSDK::Cms::SimpleUser::OrHash,
            updated_by_user_id: Integer,
            width: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Column Id
          id:,
          # Indicates whether the column has been deleted.
          deleted:,
          # The description of the column.
          description:,
          # Label of the column
          label:,
          # Name of the column
          name:,
          # Type of the column
          type:,
          # The timestamp when the column was created.
          created_at: nil,
          created_by: nil,
          # The ID of the user who created the column.
          created_by_user_id: nil,
          # Foreign Column id
          foreign_column_id: nil,
          # Foreign Ids
          foreign_ids: nil,
          # Foreign ids
          foreign_ids_by_id: nil,
          # Foreign ids by name
          foreign_ids_by_name: nil,
          # Foreign table id referenced
          foreign_table_id: nil,
          # Number of options available
          option_count: nil,
          # Options to choose for select and multi-select columns
          options: nil,
          # The timestamp when the column was last updated.
          updated_at: nil,
          updated_by: nil,
          # The ID of the user who last updated the column.
          updated_by_user_id: nil,
          # Column width for HubDB UI
          width: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              deleted: T::Boolean,
              description: String,
              label: String,
              name: String,
              type: HubSpotSDK::Cms::Column::Type::TaggedSymbol,
              created_at: Time,
              created_by: HubSpotSDK::Cms::SimpleUser,
              created_by_user_id: Integer,
              foreign_column_id: Integer,
              foreign_ids: T::Array[HubSpotSDK::Cms::ForeignID],
              foreign_ids_by_id: T::Hash[Symbol, HubSpotSDK::Cms::ForeignID],
              foreign_ids_by_name: T::Hash[Symbol, HubSpotSDK::Cms::ForeignID],
              foreign_table_id: Integer,
              option_count: Integer,
              options: T::Array[HubSpotSDK::Cms::HubdbOption],
              updated_at: Time,
              updated_by: HubSpotSDK::Cms::SimpleUser,
              updated_by_user_id: Integer,
              width: Integer
            }
          )
        end
        def to_hash
        end

        # Type of the column
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubSpotSDK::Cms::Column::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEAN = T.let(:BOOLEAN, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          CODE = T.let(:CODE, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          COMPOSITE =
            T.let(:COMPOSITE, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          CTA = T.let(:CTA, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          CURRENCY =
            T.let(:CURRENCY, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          DATE = T.let(:DATE, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          DATETIME =
            T.let(:DATETIME, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          EMBED = T.let(:EMBED, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          FILE = T.let(:FILE, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          FOREIGN_ID =
            T.let(:FOREIGN_ID, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          HUBSPOT_VIDEO =
            T.let(:HUBSPOT_VIDEO, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          IMAGE = T.let(:IMAGE, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          JSON = T.let(:JSON, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          LOCATION =
            T.let(:LOCATION, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          MULTISELECT =
            T.let(:MULTISELECT, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          NULL = T.let(:NULL, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          NUMBER = T.let(:NUMBER, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          RICHTEXT =
            T.let(:RICHTEXT, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          SELECT = T.let(:SELECT, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          TEXT = T.let(:TEXT, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          URL = T.let(:URL, HubSpotSDK::Cms::Column::Type::TaggedSymbol)
          VIDEO = T.let(:VIDEO, HubSpotSDK::Cms::Column::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::Column::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
