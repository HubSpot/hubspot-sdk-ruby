# typed: strong

module HubspotSDK
  module Models
    module DataStudio
      class BodyPart < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::DataStudio::BodyPart,
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

        # An object representing the actual content or payload of the body part.
        sig { returns(T.anything) }
        attr_accessor :entity

        # An object containing the headers associated with this body part, where each
        # header can have multiple string values.
        sig { returns(T::Hash[Symbol, T::Array[String]]) }
        attr_accessor :headers

        sig { returns(HubspotSDK::DataStudio::MediaType) }
        attr_reader :media_type

        sig do
          params(media_type: HubspotSDK::DataStudio::MediaType::OrHash).void
        end
        attr_writer :media_type

        # An object representing workers that handle the processing of the message body.
        sig { returns(T.anything) }
        attr_accessor :message_body_workers

        # An object containing headers with parameters, where each header can have
        # multiple ParameterizedHeader objects.
        sig do
          returns(
            T::Hash[
              Symbol,
              T::Array[HubspotSDK::DataStudio::ParameterizedHeader]
            ]
          )
        end
        attr_accessor :parameterized_headers

        # An object representing providers that supply additional handling or processing
        # for the body part.
        sig { returns(T.anything) }
        attr_accessor :providers

        sig { returns(T.nilable(HubspotSDK::DataStudio::MultiPart)) }
        attr_reader :parent

        sig { params(parent: HubspotSDK::DataStudio::MultiPart).void }
        attr_writer :parent

        sig do
          params(
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
          content_disposition:,
          # An object representing the actual content or payload of the body part.
          entity:,
          # An object containing the headers associated with this body part, where each
          # header can have multiple string values.
          headers:,
          media_type:,
          # An object representing workers that handle the processing of the message body.
          message_body_workers:,
          # An object containing headers with parameters, where each header can have
          # multiple ParameterizedHeader objects.
          parameterized_headers:,
          # An object representing providers that supply additional handling or processing
          # for the body part.
          providers:,
          parent: nil
        )
        end

        sig do
          override.returns(
            {
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
