# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Column < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Column, HubspotSDK::Internal::AnyHash)
          end

        # Column Id
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :deleted

        sig { returns(String) }
        attr_accessor :description

        # Label of the column
        sig { returns(String) }
        attr_accessor :label

        # Name of the column
        sig { returns(String) }
        attr_accessor :name

        # Type of the column
        sig { returns(HubspotSDK::Cms::Column::Type::TaggedSymbol) }
        attr_accessor :type

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(HubspotSDK::Cms::SimpleUser)) }
        attr_reader :created_by

        sig { params(created_by: HubspotSDK::Cms::SimpleUser::OrHash).void }
        attr_writer :created_by

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
        sig { returns(T.nilable(T::Array[HubspotSDK::Cms::ForeignID])) }
        attr_reader :foreign_ids

        sig do
          params(foreign_ids: T::Array[HubspotSDK::Cms::ForeignID::OrHash]).void
        end
        attr_writer :foreign_ids

        # Foreign ids
        sig { returns(T.nilable(T::Hash[Symbol, HubspotSDK::Cms::ForeignID])) }
        attr_reader :foreign_ids_by_id

        sig do
          params(
            foreign_ids_by_id:
              T::Hash[Symbol, HubspotSDK::Cms::ForeignID::OrHash]
          ).void
        end
        attr_writer :foreign_ids_by_id

        # Foreign ids by name
        sig { returns(T.nilable(T::Hash[Symbol, HubspotSDK::Cms::ForeignID])) }
        attr_reader :foreign_ids_by_name

        sig do
          params(
            foreign_ids_by_name:
              T::Hash[Symbol, HubspotSDK::Cms::ForeignID::OrHash]
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
        sig { returns(T.nilable(T::Array[HubspotSDK::Option])) }
        attr_reader :options

        sig { params(options: T::Array[HubspotSDK::Option::OrHash]).void }
        attr_writer :options

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig { returns(T.nilable(HubspotSDK::Cms::SimpleUser)) }
        attr_reader :updated_by

        sig { params(updated_by: HubspotSDK::Cms::SimpleUser::OrHash).void }
        attr_writer :updated_by

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
            type: HubspotSDK::Cms::Column::Type::OrSymbol,
            created_at: Time,
            created_by: HubspotSDK::Cms::SimpleUser::OrHash,
            created_by_user_id: Integer,
            foreign_column_id: Integer,
            foreign_ids: T::Array[HubspotSDK::Cms::ForeignID::OrHash],
            foreign_ids_by_id:
              T::Hash[Symbol, HubspotSDK::Cms::ForeignID::OrHash],
            foreign_ids_by_name:
              T::Hash[Symbol, HubspotSDK::Cms::ForeignID::OrHash],
            foreign_table_id: Integer,
            option_count: Integer,
            options: T::Array[HubspotSDK::Option::OrHash],
            updated_at: Time,
            updated_by: HubspotSDK::Cms::SimpleUser::OrHash,
            updated_by_user_id: Integer,
            width: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Column Id
          id:,
          deleted:,
          description:,
          # Label of the column
          label:,
          # Name of the column
          name:,
          # Type of the column
          type:,
          created_at: nil,
          created_by: nil,
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
          updated_at: nil,
          updated_by: nil,
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
              type: HubspotSDK::Cms::Column::Type::TaggedSymbol,
              created_at: Time,
              created_by: HubspotSDK::Cms::SimpleUser,
              created_by_user_id: Integer,
              foreign_column_id: Integer,
              foreign_ids: T::Array[HubspotSDK::Cms::ForeignID],
              foreign_ids_by_id: T::Hash[Symbol, HubspotSDK::Cms::ForeignID],
              foreign_ids_by_name: T::Hash[Symbol, HubspotSDK::Cms::ForeignID],
              foreign_table_id: Integer,
              option_count: Integer,
              options: T::Array[HubspotSDK::Option],
              updated_at: Time,
              updated_by: HubspotSDK::Cms::SimpleUser,
              updated_by_user_id: Integer,
              width: Integer
            }
          )
        end
        def to_hash
        end

        # Type of the column
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::Column::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NULL = T.let(:NULL, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          TEXT = T.let(:TEXT, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          NUMBER = T.let(:NUMBER, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          URL = T.let(:URL, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          IMAGE = T.let(:IMAGE, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          SELECT = T.let(:SELECT, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          MULTISELECT =
            T.let(:MULTISELECT, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          BOOLEAN = T.let(:BOOLEAN, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          LOCATION =
            T.let(:LOCATION, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          DATE = T.let(:DATE, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          DATETIME =
            T.let(:DATETIME, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          CURRENCY =
            T.let(:CURRENCY, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          RICHTEXT =
            T.let(:RICHTEXT, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          FOREIGN_ID =
            T.let(:FOREIGN_ID, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          VIDEO = T.let(:VIDEO, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          CTA = T.let(:CTA, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          FILE = T.let(:FILE, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          JSON = T.let(:JSON, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          COMPOSITE =
            T.let(:COMPOSITE, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          CODE = T.let(:CODE, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          HUBSPOT_VIDEO =
            T.let(:HUBSPOT_VIDEO, HubspotSDK::Cms::Column::Type::TaggedSymbol)
          EMBED = T.let(:EMBED, HubspotSDK::Cms::Column::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Column::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
