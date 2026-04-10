# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicRssEmailDetails < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute blog_email_type
        #
        #   @return [String, nil]
        optional :blog_email_type, String, api_name: :blogEmailType

        # @!attribute blog_image_max_width
        #
        #   @return [Integer, nil]
        optional :blog_image_max_width, Integer, api_name: :blogImageMaxWidth

        # @!attribute blog_layout
        #
        #   @return [Symbol, HubSpotSDK::Models::Marketing::PublicRssEmailDetails::BlogLayout, nil]
        optional :blog_layout,
                 enum: -> { HubSpotSDK::Marketing::PublicRssEmailDetails::BlogLayout },
                 api_name: :blogLayout

        # @!attribute hubspot_blog_id
        #
        #   @return [String, nil]
        optional :hubspot_blog_id, String, api_name: :hubspotBlogId

        # @!attribute max_entries
        #
        #   @return [Integer, nil]
        optional :max_entries, Integer, api_name: :maxEntries

        # @!attribute rss_entry_template
        #
        #   @return [String, nil]
        optional :rss_entry_template, String, api_name: :rssEntryTemplate

        # @!attribute timing
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :timing, HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!attribute use_headline_as_subject
        #
        #   @return [Boolean, nil]
        optional :use_headline_as_subject,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :useHeadlineAsSubject

        # @!method initialize(blog_email_type: nil, blog_image_max_width: nil, blog_layout: nil, hubspot_blog_id: nil, max_entries: nil, rss_entry_template: nil, timing: nil, url: nil, use_headline_as_subject: nil)
        #   @param blog_email_type [String]
        #   @param blog_image_max_width [Integer]
        #   @param blog_layout [Symbol, HubSpotSDK::Models::Marketing::PublicRssEmailDetails::BlogLayout]
        #   @param hubspot_blog_id [String]
        #   @param max_entries [Integer]
        #   @param rss_entry_template [String]
        #   @param timing [Hash{Symbol=>Object}]
        #   @param url [String]
        #   @param use_headline_as_subject [Boolean]

        # @see HubSpotSDK::Models::Marketing::PublicRssEmailDetails#blog_layout
        module BlogLayout
          extend HubSpotSDK::Internal::Type::Enum

          FULL_POST = :FULL_POST
          SUMMARY_NO_FEATURED_IMAGE = :SUMMARY_NO_FEATURED_IMAGE
          SUMMARY_WITH_FEATURED_IMAGE = :SUMMARY_WITH_FEATURED_IMAGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
