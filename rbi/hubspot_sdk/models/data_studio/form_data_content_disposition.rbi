# typed: strong

module HubspotSDK
  module Models
    module DataStudio
      class FormDataContentDisposition < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::DataStudio::FormDataContentDisposition,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The date and time when the file was created, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :creation_date

        # A string indicating the name of the file associated with this content
        # disposition.
        sig { returns(String) }
        attr_accessor :file_name

        # The date and time when the file was last modified, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :modification_date

        # A string representing the name associated with this content disposition.
        sig { returns(String) }
        attr_accessor :name

        # An object containing additional parameters for the content disposition, with
        # each parameter represented as a string.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :parameters

        # The date and time when the file was last read, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :read_date

        # An integer representing the size of the file in bytes.
        sig { returns(Integer) }
        attr_accessor :size

        # A string representing the type of content disposition.
        sig { returns(String) }
        attr_accessor :type

        sig do
          params(
            creation_date: Time,
            file_name: String,
            modification_date: Time,
            name: String,
            parameters: T::Hash[Symbol, String],
            read_date: Time,
            size: Integer,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time when the file was created, in ISO 8601 format.
          creation_date:,
          # A string indicating the name of the file associated with this content
          # disposition.
          file_name:,
          # The date and time when the file was last modified, in ISO 8601 format.
          modification_date:,
          # A string representing the name associated with this content disposition.
          name:,
          # An object containing additional parameters for the content disposition, with
          # each parameter represented as a string.
          parameters:,
          # The date and time when the file was last read, in ISO 8601 format.
          read_date:,
          # An integer representing the size of the file in bytes.
          size:,
          # A string representing the type of content disposition.
          type:
        )
        end

        sig do
          override.returns(
            {
              creation_date: Time,
              file_name: String,
              modification_date: Time,
              name: String,
              parameters: T::Hash[Symbol, String],
              read_date: Time,
              size: Integer,
              type: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
