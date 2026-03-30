# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ContentLanguageVariation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of object to set as primary in multi-language group.
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute archived_in_dashboard
        #   If True, the variant will not show up in your dashboard, although the post could
        #   still be live.
        #
        #   @return [Boolean]
        required :archived_in_dashboard, HubspotSDK::Internal::Type::Boolean, api_name: :archivedInDashboard

        # @!attribute author_name
        #   The name of the user who last published the blog post. For posts that haven't
        #   been published yet, this property will reflect the user who initially created
        #   the draft.
        #
        #   @return [String]
        required :author_name, String, api_name: :authorName

        # @!attribute campaign
        #   The GUID of the marketing campaign this page is a part of.
        #
        #   @return [String]
        required :campaign, String

        # @!attribute campaign_name
        #   Name of the associated marketing campaign.
        #
        #   @return [String]
        required :campaign_name, String, api_name: :campaignName

        # @!attribute created
        #   The timestamp (ISO8601 format) when this Blog Post was created.
        #
        #   @return [Time]
        required :created, Time

        # @!attribute name
        #   The internal name of the content language variation.
        #
        #   @return [String]
        required :name, String

        # @!attribute password
        #   Set this to create a password protected page. Entering the password will be
        #   required to view the page.
        #
        #   @return [String]
        required :password, String

        # @!attribute public_access_rules
        #
        #   @return [Array<Object>]
        required :public_access_rules,
                 HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown],
                 api_name: :publicAccessRules

        # @!attribute public_access_rules_enabled
        #   Boolean to determine whether or not to respect publicAccessRules.
        #
        #   @return [Boolean]
        required :public_access_rules_enabled,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :publicAccessRulesEnabled

        # @!attribute publish_date
        #   The date (ISO8601 format) the page is to be published at.
        #
        #   @return [Time]
        required :publish_date, Time, api_name: :publishDate

        # @!attribute slug
        #   The path of the this page. This field is appended to the domain to construct the
        #   url of this page.
        #
        #   @return [String]
        required :slug, String

        # @!attribute state
        #   An ENUM describing the current state of this page.
        #
        #   Maximum string length: 25
        #
        #   @return [String]
        required :state, String

        # @!attribute updated
        #   The timestamp (ISO8601 format) when this Blog Post was updated.
        #
        #   @return [Time]
        required :updated, Time

        # @!attribute tag_ids
        #
        #   @return [Array<Integer>, nil]
        optional :tag_ids, HubspotSDK::Internal::Type::ArrayOf[Integer], api_name: :tagIds

        # @!method initialize(id:, archived_in_dashboard:, author_name:, campaign:, campaign_name:, created:, name:, password:, public_access_rules:, public_access_rules_enabled:, publish_date:, slug:, state:, updated:, tag_ids: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::ContentLanguageVariation} for more details.
        #
        #   @param id [Integer] ID of object to set as primary in multi-language group.
        #
        #   @param archived_in_dashboard [Boolean] If True, the variant will not show up in your dashboard, although the post could
        #
        #   @param author_name [String] The name of the user who last published the blog post. For posts that haven't be
        #
        #   @param campaign [String] The GUID of the marketing campaign this page is a part of.
        #
        #   @param campaign_name [String] Name of the associated marketing campaign.
        #
        #   @param created [Time] The timestamp (ISO8601 format) when this Blog Post was created.
        #
        #   @param name [String] The internal name of the content language variation.
        #
        #   @param password [String] Set this to create a password protected page. Entering the password will be requ
        #
        #   @param public_access_rules [Array<Object>]
        #
        #   @param public_access_rules_enabled [Boolean] Boolean to determine whether or not to respect publicAccessRules.
        #
        #   @param publish_date [Time] The date (ISO8601 format) the page is to be published at.
        #
        #   @param slug [String] The path of the this page. This field is appended to the domain to construct the
        #
        #   @param state [String] An ENUM describing the current state of this page.
        #
        #   @param updated [Time] The timestamp (ISO8601 format) when this Blog Post was updated.
        #
        #   @param tag_ids [Array<Integer>]
      end
    end
  end
end
