# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::Domains#list
      class Domain < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of this domain.
        #
        #   @return [String]
        required :id, String

        # @!attribute domain
        #   The actual domain or sub-domain. e.g. www.hubspot.com
        #
        #   @return [String]
        required :domain, String

        # @!attribute is_resolving
        #   Whether the DNS for this domain is optimally configured for use with HubSpot.
        #
        #   @return [Boolean]
        required :is_resolving, HubspotSDK::Internal::Type::Boolean, api_name: :isResolving

        # @!attribute is_used_for_blog_post
        #   Whether the domain is used for CMS blog posts.
        #
        #   @return [Boolean]
        required :is_used_for_blog_post, HubspotSDK::Internal::Type::Boolean, api_name: :isUsedForBlogPost

        # @!attribute is_used_for_email
        #   Whether the domain is used for CMS email web pages.
        #
        #   @return [Boolean]
        required :is_used_for_email, HubspotSDK::Internal::Type::Boolean, api_name: :isUsedForEmail

        # @!attribute is_used_for_knowledge
        #   Whether the domain is used for CMS knowledge pages.
        #
        #   @return [Boolean]
        required :is_used_for_knowledge, HubspotSDK::Internal::Type::Boolean, api_name: :isUsedForKnowledge

        # @!attribute is_used_for_landing_page
        #   Whether the domain is used for CMS landing pages.
        #
        #   @return [Boolean]
        required :is_used_for_landing_page,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :isUsedForLandingPage

        # @!attribute is_used_for_site_page
        #   Whether the domain is used for CMS site pages.
        #
        #   @return [Boolean]
        required :is_used_for_site_page, HubspotSDK::Internal::Type::Boolean, api_name: :isUsedForSitePage

        # @!attribute correct_cname
        #
        #   @return [String, nil]
        optional :correct_cname, String, api_name: :correctCname

        # @!attribute created
        #
        #   @return [Time, nil]
        optional :created, Time

        # @!attribute is_ssl_enabled
        #
        #   @return [Boolean, nil]
        optional :is_ssl_enabled, HubspotSDK::Internal::Type::Boolean, api_name: :isSslEnabled

        # @!attribute is_ssl_only
        #
        #   @return [Boolean, nil]
        optional :is_ssl_only, HubspotSDK::Internal::Type::Boolean, api_name: :isSslOnly

        # @!attribute manually_marked_as_resolving
        #
        #   @return [Boolean, nil]
        optional :manually_marked_as_resolving,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :manuallyMarkedAsResolving

        # @!attribute primary_blog_post
        #
        #   @return [Boolean, nil]
        optional :primary_blog_post, HubspotSDK::Internal::Type::Boolean, api_name: :primaryBlogPost

        # @!attribute primary_email
        #
        #   @return [Boolean, nil]
        optional :primary_email, HubspotSDK::Internal::Type::Boolean, api_name: :primaryEmail

        # @!attribute primary_knowledge
        #
        #   @return [Boolean, nil]
        optional :primary_knowledge, HubspotSDK::Internal::Type::Boolean, api_name: :primaryKnowledge

        # @!attribute primary_landing_page
        #
        #   @return [Boolean, nil]
        optional :primary_landing_page, HubspotSDK::Internal::Type::Boolean, api_name: :primaryLandingPage

        # @!attribute primary_site_page
        #
        #   @return [Boolean, nil]
        optional :primary_site_page, HubspotSDK::Internal::Type::Boolean, api_name: :primarySitePage

        # @!attribute secondary_to_domain
        #
        #   @return [String, nil]
        optional :secondary_to_domain, String, api_name: :secondaryToDomain

        # @!attribute updated
        #
        #   @return [Time, nil]
        optional :updated, Time

        # @!method initialize(id:, domain:, is_resolving:, is_used_for_blog_post:, is_used_for_email:, is_used_for_knowledge:, is_used_for_landing_page:, is_used_for_site_page:, correct_cname: nil, created: nil, is_ssl_enabled: nil, is_ssl_only: nil, manually_marked_as_resolving: nil, primary_blog_post: nil, primary_email: nil, primary_knowledge: nil, primary_landing_page: nil, primary_site_page: nil, secondary_to_domain: nil, updated: nil)
        #   @param id [String] The unique ID of this domain.
        #
        #   @param domain [String] The actual domain or sub-domain. e.g. www.hubspot.com
        #
        #   @param is_resolving [Boolean] Whether the DNS for this domain is optimally configured for use with HubSpot.
        #
        #   @param is_used_for_blog_post [Boolean] Whether the domain is used for CMS blog posts.
        #
        #   @param is_used_for_email [Boolean] Whether the domain is used for CMS email web pages.
        #
        #   @param is_used_for_knowledge [Boolean] Whether the domain is used for CMS knowledge pages.
        #
        #   @param is_used_for_landing_page [Boolean] Whether the domain is used for CMS landing pages.
        #
        #   @param is_used_for_site_page [Boolean] Whether the domain is used for CMS site pages.
        #
        #   @param correct_cname [String]
        #
        #   @param created [Time]
        #
        #   @param is_ssl_enabled [Boolean]
        #
        #   @param is_ssl_only [Boolean]
        #
        #   @param manually_marked_as_resolving [Boolean]
        #
        #   @param primary_blog_post [Boolean]
        #
        #   @param primary_email [Boolean]
        #
        #   @param primary_knowledge [Boolean]
        #
        #   @param primary_landing_page [Boolean]
        #
        #   @param primary_site_page [Boolean]
        #
        #   @param secondary_to_domain [String]
        #
        #   @param updated [Time]
      end
    end
  end
end
