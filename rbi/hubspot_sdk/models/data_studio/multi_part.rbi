# typed: strong

module HubspotSDK
  module Models
    module DataStudio
      class MultiPart < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::DataStudio::MultiPart,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An array of BodyPart objects, each representing a distinct part of the multipart
        # entity.
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

        # An object that holds the main content or payload of the multipart entity.
        sig { returns(T.anything) }
        attr_accessor :entity

        # An object containing a map of header names to their respective values, where
        # each value is an array of strings.
        sig { returns(T::Hash[Symbol, T::Array[String]]) }
        attr_accessor :headers

        sig { returns(HubspotSDK::DataStudio::MediaType) }
        attr_reader :media_type

        sig do
          params(media_type: HubspotSDK::DataStudio::MediaType::OrHash).void
        end
        attr_writer :media_type

        # An object that may contain workers for processing the message body, though its
        # specific properties are not detailed.
        sig { returns(T.anything) }
        attr_accessor :message_body_workers

        # An object containing a map of header names to arrays of ParameterizedHeader
        # objects, which include additional parameters for each header.
        sig do
          returns(
            T::Hash[
              Symbol,
              T::Array[HubspotSDK::DataStudio::ParameterizedHeader]
            ]
          )
        end
        attr_accessor :parameterized_headers

        # An object that may contain providers related to the multipart entity, though its
        # specific properties are not detailed.
        sig { returns(T.anything) }
        attr_accessor :providers

        sig { returns(T.nilable(HubspotSDK::DataStudio::MultiPart)) }
        attr_reader :parent

        sig { params(parent: HubspotSDK::DataStudio::MultiPart).void }
        attr_writer :parent

        sig do
          params(
            body_parts: T::Array[HubspotSDK::DataStudio::BodyPart],
            content_disposition:
              HubspotSDK::DataStudio::ContentDisposition::OrHash,
            entity: T.anything,
            headers: T::Hash[Symbol, T::Array[String]],
            media_type: HubspotSDK::DataStudio::MediaType::OrHash,
            message_body_workers: T.anything,
            parameterized_headers:
              T::Hash[
                Symbol,
                T::Array[HubspotSDK::DataStudio::ParameterizedHeader::OrHash]
              ],
            providers: T.anything,
            parent: HubspotSDK::DataStudio::MultiPart
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of BodyPart objects, each representing a distinct part of the multipart
          # entity.
          body_parts:,
          content_disposition:,
          # An object that holds the main content or payload of the multipart entity.
          entity:,
          # An object containing a map of header names to their respective values, where
          # each value is an array of strings.
          headers:,
          media_type:,
          # An object that may contain workers for processing the message body, though its
          # specific properties are not detailed.
          message_body_workers:,
          # An object containing a map of header names to arrays of ParameterizedHeader
          # objects, which include additional parameters for each header.
          parameterized_headers:,
          # An object that may contain providers related to the multipart entity, though its
          # specific properties are not detailed.
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
