# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ImportRowCore < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Crm::ImportRowCore, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T::Array[String]) }
        attr_accessor :additional_row_data

        # Indicates whether this row contains values that were encrypted.
        sig { returns(T::Boolean) }
        attr_accessor :contains_encrypted_properties

        # The unique identifier of the uploaded file containing this row.
        sig { returns(Integer) }
        attr_accessor :file_id

        # The 1-indexed line number of this row in the source file. Line number 0 is
        # reserved for file-wide errors that don't correspond to a specific row.
        sig { returns(Integer) }
        attr_accessor :line_number

        sig { returns(T::Array[String]) }
        attr_accessor :row_data

        # The name of the spreadsheet sheet/page containing this row.
        sig { returns(T.nilable(String)) }
        attr_reader :page_name

        sig { params(page_name: String).void }
        attr_writer :page_name

        sig do
          params(
            additional_row_data: T::Array[String],
            contains_encrypted_properties: T::Boolean,
            file_id: Integer,
            line_number: Integer,
            row_data: T::Array[String],
            page_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          additional_row_data:,
          # Indicates whether this row contains values that were encrypted.
          contains_encrypted_properties:,
          # The unique identifier of the uploaded file containing this row.
          file_id:,
          # The 1-indexed line number of this row in the source file. Line number 0 is
          # reserved for file-wide errors that don't correspond to a specific row.
          line_number:,
          row_data:,
          # The name of the spreadsheet sheet/page containing this row.
          page_name: nil
        )
        end

        sig do
          override.returns(
            {
              additional_row_data: T::Array[String],
              contains_encrypted_properties: T::Boolean,
              file_id: Integer,
              line_number: Integer,
              row_data: T::Array[String],
              page_name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
