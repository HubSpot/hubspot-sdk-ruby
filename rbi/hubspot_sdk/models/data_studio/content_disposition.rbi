# typed: strong

module HubspotSDK
  module Models
    module DataStudio
      class ContentDisposition < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::DataStudio::ContentDisposition,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The date and time when the file was created, formatted as a date-time string.
        sig { returns(Time) }
        attr_accessor :creation_date

        # The name of the file as a string, indicating the file's name in the content
        # disposition.
        sig { returns(String) }
        attr_accessor :file_name

        # The date and time when the file was last modified, formatted as a date-time
        # string.
        sig { returns(Time) }
        attr_accessor :modification_date

        # An object containing additional parameters for the content disposition, with
        # each parameter represented as a key-value pair of strings.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :parameters

        # The date and time when the file was last read, formatted as a date-time string.
        sig { returns(Time) }
        attr_accessor :read_date

        # The size of the file as an integer, representing the file's size in bytes.
        sig { returns(Integer) }
        attr_accessor :size

        # The type of content disposition, typically a string indicating how the content
        # should be handled.
        sig { returns(String) }
        attr_accessor :type

        sig do
          params(
            creation_date: Time,
            file_name: String,
            modification_date: Time,
            parameters: T::Hash[Symbol, String],
            read_date: Time,
            size: Integer,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time when the file was created, formatted as a date-time string.
          creation_date:,
          # The name of the file as a string, indicating the file's name in the content
          # disposition.
          file_name:,
          # The date and time when the file was last modified, formatted as a date-time
          # string.
          modification_date:,
          # An object containing additional parameters for the content disposition, with
          # each parameter represented as a key-value pair of strings.
          parameters:,
          # The date and time when the file was last read, formatted as a date-time string.
          read_date:,
          # The size of the file as an integer, representing the file's size in bytes.
          size:,
          # The type of content disposition, typically a string indicating how the content
          # should be handled.
          type:
        )
        end

        sig do
          override.returns(
            {
              creation_date: Time,
              file_name: String,
              modification_date: Time,
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
