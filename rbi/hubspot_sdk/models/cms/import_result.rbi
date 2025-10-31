# typed: strong

module HubspotSDK
  module Models
    module Cms
      class ImportResult < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::ImportResult, HubspotSDK::Internal::AnyHash)
          end

        # Specifies number of duplicate rows
        sig { returns(Integer) }
        attr_accessor :duplicate_rows

        # List of errors during import
        sig { returns(T::Array[HubspotSDK::Error]) }
        attr_accessor :errors

        # Specifies whether row limit exceeded during import
        sig { returns(T::Boolean) }
        attr_accessor :row_limit_exceeded

        # Specifies number of rows imported
        sig { returns(Integer) }
        attr_accessor :rows_imported

        sig do
          params(
            duplicate_rows: Integer,
            errors: T::Array[HubspotSDK::Error::OrHash],
            row_limit_exceeded: T::Boolean,
            rows_imported: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies number of duplicate rows
          duplicate_rows:,
          # List of errors during import
          errors:,
          # Specifies whether row limit exceeded during import
          row_limit_exceeded:,
          # Specifies number of rows imported
          rows_imported:
        )
        end

        sig do
          override.returns(
            {
              duplicate_rows: Integer,
              errors: T::Array[HubspotSDK::Error],
              row_limit_exceeded: T::Boolean,
              rows_imported: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
