# frozen_string_literal: true

module HubspotSDK
  module Models
    module DataStudio
      class FormDataBodyPart < HubspotSDK::Internal::Type::BaseModel
        # @!attribute content_disposition
        #
        #   @return [HubspotSDK::Models::DataStudio::ContentDisposition]
        required :content_disposition,
                 -> { HubspotSDK::DataStudio::ContentDisposition },
                 api_name: :contentDisposition

        # @!attribute entity
        #   An object representing the entity of the form data part, which contains the
        #   actual data being submitted.
        #
        #   @return [Object]
        required :entity, HubspotSDK::Internal::Type::Unknown

        # @!attribute form_data_content_disposition
        #
        #   @return [HubspotSDK::Models::DataStudio::FormDataContentDisposition]
        required :form_data_content_disposition,
                 -> { HubspotSDK::DataStudio::FormDataContentDisposition },
                 api_name: :formDataContentDisposition

        # @!attribute headers
        #   An object containing the headers associated with this form data part, where each
        #   header can have multiple string values.
        #
        #   @return [Hash{Symbol=>Array<String>}]
        required :headers, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[String]]

        # @!attribute media_type
        #
        #   @return [HubspotSDK::Models::DataStudio::MediaType]
        required :media_type, -> { HubspotSDK::DataStudio::MediaType }, api_name: :mediaType

        # @!attribute message_body_workers
        #   An object representing the message body workers, which are responsible for
        #   processing the body of the message.
        #
        #   @return [Object]
        required :message_body_workers, HubspotSDK::Internal::Type::Unknown, api_name: :messageBodyWorkers

        # @!attribute name
        #   The name of the form data part, typically used to identify the part within the
        #   multipart request.
        #
        #   @return [String]
        required :name, String

        # @!attribute parameterized_headers
        #   An object containing parameterized headers, where each header can have multiple
        #   values represented as ParameterizedHeader objects.
        #
        #   @return [Hash{Symbol=>Array<HubspotSDK::Models::DataStudio::ParameterizedHeader>}]
        required :parameterized_headers,
                 -> {
                   HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::DataStudio::ParameterizedHeader]]
                 },
                 api_name: :parameterizedHeaders

        # @!attribute providers
        #   An object representing the providers associated with this form data part.
        #
        #   @return [Object]
        required :providers, HubspotSDK::Internal::Type::Unknown

        # @!attribute simple
        #   A boolean indicating whether the form data part is simple, typically meaning it
        #   does not contain complex nested structures.
        #
        #   @return [Boolean]
        required :simple, HubspotSDK::Internal::Type::Boolean

        # @!attribute value
        #   The string value of the form data part, representing the actual data being
        #   submitted as a string.
        #
        #   @return [String]
        required :value, String

        # @!attribute parent
        #
        #   @return [HubspotSDK::Models::DataStudio::MultiPart, nil]
        optional :parent, -> { HubspotSDK::DataStudio::MultiPart }

        # @!method initialize(content_disposition:, entity:, form_data_content_disposition:, headers:, media_type:, message_body_workers:, name:, parameterized_headers:, providers:, simple:, value:, parent: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::DataStudio::FormDataBodyPart} for more details.
        #
        #   @param content_disposition [HubspotSDK::Models::DataStudio::ContentDisposition]
        #
        #   @param entity [Object] An object representing the entity of the form data part, which contains the actu
        #
        #   @param form_data_content_disposition [HubspotSDK::Models::DataStudio::FormDataContentDisposition]
        #
        #   @param headers [Hash{Symbol=>Array<String>}] An object containing the headers associated with this form data part, where each
        #
        #   @param media_type [HubspotSDK::Models::DataStudio::MediaType]
        #
        #   @param message_body_workers [Object] An object representing the message body workers, which are responsible for proce
        #
        #   @param name [String] The name of the form data part, typically used to identify the part within the m
        #
        #   @param parameterized_headers [Hash{Symbol=>Array<HubspotSDK::Models::DataStudio::ParameterizedHeader>}] An object containing parameterized headers, where each header can have multiple
        #
        #   @param providers [Object] An object representing the providers associated with this form data part.
        #
        #   @param simple [Boolean] A boolean indicating whether the form data part is simple, typically meaning it
        #
        #   @param value [String] The string value of the form data part, representing the actual data being submi
        #
        #   @param parent [HubspotSDK::Models::DataStudio::MultiPart]
      end
    end
  end
end
