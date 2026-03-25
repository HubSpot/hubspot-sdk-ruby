# typed: strong

module HubspotSDK
  module Models
    module DataStudio
      class FormDataBodyPart < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::DataStudio::FormDataBodyPart,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::DataStudio::ContentDisposition) }
        attr_reader :content_disposition

        sig do
          params(
            content_disposition:
              HubspotSDK::DataStudio::ContentDisposition::OrHash
          ).void
        end
        attr_writer :content_disposition

        # An object representing the entity of the form data part, which contains the
        # actual data being submitted.
        sig { returns(T.anything) }
        attr_accessor :entity

        sig { returns(HubspotSDK::DataStudio::FormDataContentDisposition) }
        attr_reader :form_data_content_disposition

        sig do
          params(
            form_data_content_disposition:
              HubspotSDK::DataStudio::FormDataContentDisposition::OrHash
          ).void
        end
        attr_writer :form_data_content_disposition

        # An object containing the headers associated with this form data part, where each
        # header can have multiple string values.
        sig { returns(T::Hash[Symbol, T::Array[String]]) }
        attr_accessor :headers

        sig { returns(HubspotSDK::DataStudio::MediaType) }
        attr_reader :media_type

        sig do
          params(media_type: HubspotSDK::DataStudio::MediaType::OrHash).void
        end
        attr_writer :media_type

        # An object representing the message body workers, which are responsible for
        # processing the body of the message.
        sig { returns(T.anything) }
        attr_accessor :message_body_workers

        # The name of the form data part, typically used to identify the part within the
        # multipart request.
        sig { returns(String) }
        attr_accessor :name

        # An object containing parameterized headers, where each header can have multiple
        # values represented as ParameterizedHeader objects.
        sig do
          returns(
            T::Hash[
              Symbol,
              T::Array[HubspotSDK::DataStudio::ParameterizedHeader]
            ]
          )
        end
        attr_accessor :parameterized_headers

        # An object representing the providers associated with this form data part.
        sig { returns(T.anything) }
        attr_accessor :providers

        # A boolean indicating whether the form data part is simple, typically meaning it
        # does not contain complex nested structures.
        sig { returns(T::Boolean) }
        attr_accessor :simple

        # The string value of the form data part, representing the actual data being
        # submitted as a string.
        sig { returns(String) }
        attr_accessor :value

        sig { returns(T.nilable(HubspotSDK::DataStudio::MultiPart)) }
        attr_reader :parent

        sig { params(parent: HubspotSDK::DataStudio::MultiPart::OrHash).void }
        attr_writer :parent

        sig do
          params(
            content_disposition:
              HubspotSDK::DataStudio::ContentDisposition::OrHash,
            entity: T.anything,
            form_data_content_disposition:
              HubspotSDK::DataStudio::FormDataContentDisposition::OrHash,
            headers: T::Hash[Symbol, T::Array[String]],
            media_type: HubspotSDK::DataStudio::MediaType::OrHash,
            message_body_workers: T.anything,
            name: String,
            parameterized_headers:
              T::Hash[
                Symbol,
                T::Array[HubspotSDK::DataStudio::ParameterizedHeader::OrHash]
              ],
            providers: T.anything,
            simple: T::Boolean,
            value: String,
            parent: HubspotSDK::DataStudio::MultiPart::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          content_disposition:,
          # An object representing the entity of the form data part, which contains the
          # actual data being submitted.
          entity:,
          form_data_content_disposition:,
          # An object containing the headers associated with this form data part, where each
          # header can have multiple string values.
          headers:,
          media_type:,
          # An object representing the message body workers, which are responsible for
          # processing the body of the message.
          message_body_workers:,
          # The name of the form data part, typically used to identify the part within the
          # multipart request.
          name:,
          # An object containing parameterized headers, where each header can have multiple
          # values represented as ParameterizedHeader objects.
          parameterized_headers:,
          # An object representing the providers associated with this form data part.
          providers:,
          # A boolean indicating whether the form data part is simple, typically meaning it
          # does not contain complex nested structures.
          simple:,
          # The string value of the form data part, representing the actual data being
          # submitted as a string.
          value:,
          parent: nil
        )
        end

        sig do
          override.returns(
            {
              content_disposition: HubspotSDK::DataStudio::ContentDisposition,
              entity: T.anything,
              form_data_content_disposition:
                HubspotSDK::DataStudio::FormDataContentDisposition,
              headers: T::Hash[Symbol, T::Array[String]],
              media_type: HubspotSDK::DataStudio::MediaType,
              message_body_workers: T.anything,
              name: String,
              parameterized_headers:
                T::Hash[
                  Symbol,
                  T::Array[HubspotSDK::DataStudio::ParameterizedHeader]
                ],
              providers: T.anything,
              simple: T::Boolean,
              value: String,
              parent: HubspotSDK::DataStudio::MultiPart
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
