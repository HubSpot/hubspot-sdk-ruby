# frozen_string_literal: true

module HubspotSDK
  module Models
    module DataStudio
      class FormDataMultiPart < HubspotSDK::Internal::Type::BaseModel
        # @!attribute body_parts
        #   An array of BodyPart objects, each representing a part of the multipart form
        #   data.
        #
        #   @return [Array<HubspotSDK::Models::DataStudio::BodyPart>]
        required :body_parts,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::DataStudio::BodyPart] },
                 api_name: :bodyParts

        # @!attribute content_disposition
        #
        #   @return [HubspotSDK::Models::DataStudio::ContentDisposition]
        required :content_disposition,
                 -> { HubspotSDK::DataStudio::ContentDisposition },
                 api_name: :contentDisposition

        # @!attribute entity
        #   An object representing the entity of the multipart form data, containing the
        #   actual data to be processed.
        #
        #   @return [Object]
        required :entity, HubspotSDK::Internal::Type::Unknown

        # @!attribute fields
        #   An object containing fields of the multipart form data, where each field can
        #   have multiple FormDataBodyPart items.
        #
        #   @return [Hash{Symbol=>Array<HubspotSDK::Models::DataStudio::FormDataBodyPart>}]
        required :fields,
                 -> { HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::DataStudio::FormDataBodyPart]] }

        # @!attribute headers
        #   An object containing headers associated with the multipart form data, where each
        #   header can have multiple string values.
        #
        #   @return [Hash{Symbol=>Array<String>}]
        required :headers, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[String]]

        # @!attribute media_type
        #
        #   @return [HubspotSDK::Models::DataStudio::MediaType]
        required :media_type, -> { HubspotSDK::DataStudio::MediaType }, api_name: :mediaType

        # @!attribute message_body_workers
        #   An object representing workers that process the message body of the multipart
        #   form data.
        #
        #   @return [Object]
        required :message_body_workers, HubspotSDK::Internal::Type::Unknown, api_name: :messageBodyWorkers

        # @!attribute parameterized_headers
        #   An object containing parameterized headers, where each header can have multiple
        #   ParameterizedHeader items.
        #
        #   @return [Hash{Symbol=>Array<HubspotSDK::Models::DataStudio::ParameterizedHeader>}]
        required :parameterized_headers,
                 -> {
                   HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::DataStudio::ParameterizedHeader]]
                 },
                 api_name: :parameterizedHeaders

        # @!attribute providers
        #   An object representing providers associated with the multipart form data.
        #
        #   @return [Object]
        required :providers, HubspotSDK::Internal::Type::Unknown

        # @!attribute parent
        #
        #   @return [HubspotSDK::Models::DataStudio::MultiPart, nil]
        optional :parent, -> { HubspotSDK::DataStudio::MultiPart }

        # @!method initialize(body_parts:, content_disposition:, entity:, fields:, headers:, media_type:, message_body_workers:, parameterized_headers:, providers:, parent: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::DataStudio::FormDataMultiPart} for more details.
        #
        #   @param body_parts [Array<HubspotSDK::Models::DataStudio::BodyPart>] An array of BodyPart objects, each representing a part of the multipart form dat
        #
        #   @param content_disposition [HubspotSDK::Models::DataStudio::ContentDisposition]
        #
        #   @param entity [Object] An object representing the entity of the multipart form data, containing the act
        #
        #   @param fields [Hash{Symbol=>Array<HubspotSDK::Models::DataStudio::FormDataBodyPart>}] An object containing fields of the multipart form data, where each field can hav
        #
        #   @param headers [Hash{Symbol=>Array<String>}] An object containing headers associated with the multipart form data, where each
        #
        #   @param media_type [HubspotSDK::Models::DataStudio::MediaType]
        #
        #   @param message_body_workers [Object] An object representing workers that process the message body of the multipart fo
        #
        #   @param parameterized_headers [Hash{Symbol=>Array<HubspotSDK::Models::DataStudio::ParameterizedHeader>}] An object containing parameterized headers, where each header can have multiple
        #
        #   @param providers [Object] An object representing providers associated with the multipart form data.
        #
        #   @param parent [HubspotSDK::Models::DataStudio::MultiPart]
      end
    end
  end
end
