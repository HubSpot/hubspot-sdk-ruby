# typed: strong

module HubspotSDK
  module Models
    module DataStudio
      class FormDataMultiPart < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::DataStudio::FormDataMultiPart,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An array of BodyPart objects, each representing a part of the multipart form
        # data.
        sig { returns(T::Array[HubspotSDK::DataStudio::BodyPart]) }
        attr_accessor :body_parts

        sig { returns(HubspotSDK::DataStudio::ContentDisposition) }
        attr_reader :content_disposition

        sig do
          params(
            content_disposition:
              HubspotSDK::DataStudio::ContentDisposition::OrHash
          ).void
        end
        attr_writer :content_disposition

        # An object representing the entity of the multipart form data, containing the
        # actual data to be processed.
        sig { returns(T.anything) }
        attr_accessor :entity

        # An object containing fields of the multipart form data, where each field can
        # have multiple FormDataBodyPart items.
        sig do
          returns(
            T::Hash[Symbol, T::Array[HubspotSDK::DataStudio::FormDataBodyPart]]
          )
        end
        attr_accessor :fields

        # An object containing headers associated with the multipart form data, where each
        # header can have multiple string values.
        sig { returns(T::Hash[Symbol, T::Array[String]]) }
        attr_accessor :headers

        sig { returns(HubspotSDK::DataStudio::MediaType) }
        attr_reader :media_type

        sig do
          params(media_type: HubspotSDK::DataStudio::MediaType::OrHash).void
        end
        attr_writer :media_type

        # An object representing workers that process the message body of the multipart
        # form data.
        sig { returns(T.anything) }
        attr_accessor :message_body_workers

        # An object containing parameterized headers, where each header can have multiple
        # ParameterizedHeader items.
        sig do
          returns(
            T::Hash[
              Symbol,
              T::Array[HubspotSDK::DataStudio::ParameterizedHeader]
            ]
          )
        end
        attr_accessor :parameterized_headers

        # An object representing providers associated with the multipart form data.
        sig { returns(T.anything) }
        attr_accessor :providers

        sig { returns(T.nilable(HubspotSDK::DataStudio::MultiPart)) }
        attr_reader :parent

        sig { params(parent: HubspotSDK::DataStudio::MultiPart::OrHash).void }
        attr_writer :parent

        sig do
          params(
            body_parts: T::Array[HubspotSDK::DataStudio::BodyPart::OrHash],
            content_disposition:
              HubspotSDK::DataStudio::ContentDisposition::OrHash,
            entity: T.anything,
            fields:
              T::Hash[
                Symbol,
                T::Array[HubspotSDK::DataStudio::FormDataBodyPart::OrHash]
              ],
            headers: T::Hash[Symbol, T::Array[String]],
            media_type: HubspotSDK::DataStudio::MediaType::OrHash,
            message_body_workers: T.anything,
            parameterized_headers:
              T::Hash[
                Symbol,
                T::Array[HubspotSDK::DataStudio::ParameterizedHeader::OrHash]
              ],
            providers: T.anything,
            parent: HubspotSDK::DataStudio::MultiPart::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of BodyPart objects, each representing a part of the multipart form
          # data.
          body_parts:,
          content_disposition:,
          # An object representing the entity of the multipart form data, containing the
          # actual data to be processed.
          entity:,
          # An object containing fields of the multipart form data, where each field can
          # have multiple FormDataBodyPart items.
          fields:,
          # An object containing headers associated with the multipart form data, where each
          # header can have multiple string values.
          headers:,
          media_type:,
          # An object representing workers that process the message body of the multipart
          # form data.
          message_body_workers:,
          # An object containing parameterized headers, where each header can have multiple
          # ParameterizedHeader items.
          parameterized_headers:,
          # An object representing providers associated with the multipart form data.
          providers:,
          parent: nil
        )
        end

        sig do
          override.returns(
            {
              body_parts: T::Array[HubspotSDK::DataStudio::BodyPart],
              content_disposition: HubspotSDK::DataStudio::ContentDisposition,
              entity: T.anything,
              fields:
                T::Hash[
                  Symbol,
                  T::Array[HubspotSDK::DataStudio::FormDataBodyPart]
                ],
              headers: T::Hash[Symbol, T::Array[String]],
              media_type: HubspotSDK::DataStudio::MediaType,
              message_body_workers: T.anything,
              parameterized_headers:
                T::Hash[
                  Symbol,
                  T::Array[HubspotSDK::DataStudio::ParameterizedHeader]
                ],
              providers: T.anything,
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
