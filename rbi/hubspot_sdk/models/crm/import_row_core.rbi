# typed: strong

module HubspotSDK
  module Models
    module CRM
      class ImportRowCore < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::CRM::ImportRowCore, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :contains_encrypted_properties

        sig { returns(Integer) }
        attr_accessor :file_id

        sig { returns(Integer) }
        attr_accessor :line_number

        sig { returns(T::Array[String]) }
        attr_accessor :row_data

        sig { returns(T.nilable(String)) }
        attr_reader :page_name

        sig { params(page_name: String).void }
        attr_writer :page_name

        sig do
          params(
            contains_encrypted_properties: T::Boolean,
            file_id: Integer,
            line_number: Integer,
            row_data: T::Array[String],
            page_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          contains_encrypted_properties:,
          file_id:,
          line_number:,
          row_data:,
          page_name: nil
        )
        end

        sig do
          override.returns(
            {
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
