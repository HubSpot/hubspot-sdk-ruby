# frozen_string_literal: true

module HubspotSDK
  module Models
    module DataStudio
      class BodyPart < HubspotSDK::Internal::Type::BaseModel
        # @!attribute content_disposition
        #
        #   @return [HubspotSDK::Models::DataStudio::ContentDisposition]
        required :content_disposition,
                 -> { HubspotSDK::DataStudio::ContentDisposition },
                 api_name: :contentDisposition

        # @!attribute entity
        #   An object representing the actual content or payload of the body part.
        #
        #   @return [Object]
        required :entity, HubspotSDK::Internal::Type::Unknown

        # @!attribute headers
        #   An object containing the headers associated with this body part, where each
        #   header can have multiple string values.
        #
        #   @return [Hash{Symbol=>Array<String>}]
        required :headers, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[String]]

        # @!attribute media_type
        #
        #   @return [HubspotSDK::Models::DataStudio::MediaType]
        required :media_type, -> { HubspotSDK::DataStudio::MediaType }, api_name: :mediaType

        # @!attribute message_body_workers
        #   An object representing workers that handle the processing of the message body.
        #
        #   @return [Object]
        required :message_body_workers, HubspotSDK::Internal::Type::Unknown, api_name: :messageBodyWorkers

        # @!attribute parameterized_headers
        #   An object containing headers with parameters, where each header can have
        #   multiple ParameterizedHeader objects.
        #
        #   @return [Hash{Symbol=>Array<HubspotSDK::Models::DataStudio::ParameterizedHeader>}]
        required :parameterized_headers,
                 -> {
                   HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::DataStudio::ParameterizedHeader]]
                 },
                 api_name: :parameterizedHeaders

        # @!attribute providers
        #   An object representing providers that supply additional handling or processing
        #   for the body part.
        #
        #   @return [Object]
        required :providers, HubspotSDK::Internal::Type::Unknown

        # @!attribute parent
        #
        #   @return [HubspotSDK::Models::DataStudio::MultiPart, nil]
        optional :parent, -> { HubspotSDK::DataStudio::MultiPart }

        # @!method initialize(content_disposition:, entity:, headers:, media_type:, message_body_workers:, parameterized_headers:, providers:, parent: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::DataStudio::BodyPart} for more details.
        #
        #   @param content_disposition [HubspotSDK::Models::DataStudio::ContentDisposition]
        #
        #   @param entity [Object] An object representing the actual content or payload of the body part.
        #
        #   @param headers [Hash{Symbol=>Array<String>}] An object containing the headers associated with this body part, where each head
        #
        #   @param media_type [HubspotSDK::Models::DataStudio::MediaType]
        #
        #   @param message_body_workers [Object] An object representing workers that handle the processing of the message body.
        #
        #   @param parameterized_headers [Hash{Symbol=>Array<HubspotSDK::Models::DataStudio::ParameterizedHeader>}] An object containing headers with parameters, where each header can have multipl
        #
        #   @param providers [Object] An object representing providers that supply additional handling or processing f
        #
        #   @param parent [HubspotSDK::Models::DataStudio::MultiPart]
      end
    end
  end
end
