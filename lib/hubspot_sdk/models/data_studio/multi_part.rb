# frozen_string_literal: true

module HubspotSDK
  module Models
    module DataStudio
      class MultiPart < HubspotSDK::Internal::Type::BaseModel
        # @!attribute body_parts
        #   An array of BodyPart objects, each representing a distinct part of the multipart
        #   entity.
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
        #   An object that holds the main content or payload of the multipart entity.
        #
        #   @return [Object]
        required :entity, HubspotSDK::Internal::Type::Unknown

        # @!attribute headers
        #   An object containing a map of header names to their respective values, where
        #   each value is an array of strings.
        #
        #   @return [Hash{Symbol=>Array<String>}]
        required :headers, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[String]]

        # @!attribute media_type
        #
        #   @return [HubspotSDK::Models::DataStudio::MediaType]
        required :media_type, -> { HubspotSDK::DataStudio::MediaType }, api_name: :mediaType

        # @!attribute message_body_workers
        #   An object that may contain workers for processing the message body, though its
        #   specific properties are not detailed.
        #
        #   @return [Object]
        required :message_body_workers, HubspotSDK::Internal::Type::Unknown, api_name: :messageBodyWorkers

        # @!attribute parameterized_headers
        #   An object containing a map of header names to arrays of ParameterizedHeader
        #   objects, which include additional parameters for each header.
        #
        #   @return [Hash{Symbol=>Array<HubspotSDK::Models::DataStudio::ParameterizedHeader>}]
        required :parameterized_headers,
                 -> {
                   HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::DataStudio::ParameterizedHeader]]
                 },
                 api_name: :parameterizedHeaders

        # @!attribute providers
        #   An object that may contain providers related to the multipart entity, though its
        #   specific properties are not detailed.
        #
        #   @return [Object]
        required :providers, HubspotSDK::Internal::Type::Unknown

        # @!attribute parent
        #
        #   @return [HubspotSDK::Models::DataStudio::MultiPart, nil]
        optional :parent, -> { HubspotSDK::DataStudio::MultiPart }

        # @!method initialize(body_parts:, content_disposition:, entity:, headers:, media_type:, message_body_workers:, parameterized_headers:, providers:, parent: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::DataStudio::MultiPart} for more details.
        #
        #   @param body_parts [Array<HubspotSDK::Models::DataStudio::BodyPart>] An array of BodyPart objects, each representing a distinct part of the multipart
        #
        #   @param content_disposition [HubspotSDK::Models::DataStudio::ContentDisposition]
        #
        #   @param entity [Object] An object that holds the main content or payload of the multipart entity.
        #
        #   @param headers [Hash{Symbol=>Array<String>}] An object containing a map of header names to their respective values, where eac
        #
        #   @param media_type [HubspotSDK::Models::DataStudio::MediaType]
        #
        #   @param message_body_workers [Object] An object that may contain workers for processing the message body, though its s
        #
        #   @param parameterized_headers [Hash{Symbol=>Array<HubspotSDK::Models::DataStudio::ParameterizedHeader>}] An object containing a map of header names to arrays of ParameterizedHeader obje
        #
        #   @param providers [Object] An object that may contain providers related to the multipart entity, though its
        #
        #   @param parent [HubspotSDK::Models::DataStudio::MultiPart]
      end
    end
  end
end
