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

        # @!attribute correct_cname
        #   The expected CNAME record for the domain.
        #
        #   @return [String]
        required :correct_cname, String, api_name: :correctCname

        # @!attribute created
        #   The date and time when the domain was created.
        #
        #   @return [Time]
        required :created, Time

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

        # @!attribute is_ssl_enabled
        #   Indicates whether SSL is enabled for the domain.
        #
        #   @return [Boolean]
        required :is_ssl_enabled, HubspotSDK::Internal::Type::Boolean, api_name: :isSslEnabled

        # @!attribute is_ssl_only
        #   Indicates whether the domain is accessible only via SSL.
        #
        #   @return [Boolean]
        required :is_ssl_only, HubspotSDK::Internal::Type::Boolean, api_name: :isSslOnly

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

        # @!attribute manually_marked_as_resolving
        #   Indicates whether the domain has been manually marked as resolving.
        #
        #   @return [Boolean]
        required :manually_marked_as_resolving,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :manuallyMarkedAsResolving

        # @!attribute primary_blog_post
        #   Indicates whether the domain is the primary domain for blog posts.
        #
        #   @return [Boolean]
        required :primary_blog_post, HubspotSDK::Internal::Type::Boolean, api_name: :primaryBlogPost

        # @!attribute primary_email
        #   Indicates whether the domain is the primary domain for email pages.
        #
        #   @return [Boolean]
        required :primary_email, HubspotSDK::Internal::Type::Boolean, api_name: :primaryEmail

        # @!attribute primary_knowledge
        #   Indicates whether the domain is the primary domain for knowledge pages.
        #
        #   @return [Boolean]
        required :primary_knowledge, HubspotSDK::Internal::Type::Boolean, api_name: :primaryKnowledge

        # @!attribute primary_landing_page
        #   Indicates whether the domain is the primary domain for landing pages.
        #
        #   @return [Boolean]
        required :primary_landing_page, HubspotSDK::Internal::Type::Boolean, api_name: :primaryLandingPage

        # @!attribute primary_site_page
        #   Indicates whether the domain is the primary domain for site pages.
        #
        #   @return [Boolean]
        required :primary_site_page, HubspotSDK::Internal::Type::Boolean, api_name: :primarySitePage

        # @!attribute secondary_to_domain
        #   Specifies the domain to which this domain is secondary.
        #
        #   @return [String]
        required :secondary_to_domain, String, api_name: :secondaryToDomain

        # @!attribute updated
        #   The date and time when the domain was last updated.
        #
        #   @return [Time]
        required :updated, Time

        # @!method initialize(id:, correct_cname:, created:, domain:, is_resolving:, is_ssl_enabled:, is_ssl_only:, is_used_for_blog_post:, is_used_for_email:, is_used_for_knowledge:, is_used_for_landing_page:, is_used_for_site_page:, manually_marked_as_resolving:, primary_blog_post:, primary_email:, primary_knowledge:, primary_landing_page:, primary_site_page:, secondary_to_domain:, updated:)
        #   @param id [String] The unique ID of this domain.
        #
        #   @param correct_cname [String] The expected CNAME record for the domain.
        #
        #   @param created [Time] The date and time when the domain was created.
        #
        #   @param domain [String] The actual domain or sub-domain. e.g. www.hubspot.com
        #
        #   @param is_resolving [Boolean] Whether the DNS for this domain is optimally configured for use with HubSpot.
        #
        #   @param is_ssl_enabled [Boolean] Indicates whether SSL is enabled for the domain.
        #
        #   @param is_ssl_only [Boolean] Indicates whether the domain is accessible only via SSL.
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
        #   @param manually_marked_as_resolving [Boolean] Indicates whether the domain has been manually marked as resolving.
        #
        #   @param primary_blog_post [Boolean] Indicates whether the domain is the primary domain for blog posts.
        #
        #   @param primary_email [Boolean] Indicates whether the domain is the primary domain for email pages.
        #
        #   @param primary_knowledge [Boolean] Indicates whether the domain is the primary domain for knowledge pages.
        #
        #   @param primary_landing_page [Boolean] Indicates whether the domain is the primary domain for landing pages.
        #
        #   @param primary_site_page [Boolean] Indicates whether the domain is the primary domain for site pages.
        #
        #   @param secondary_to_domain [String] Specifies the domain to which this domain is secondary.
        #
        #   @param updated [Time] The date and time when the domain was last updated.
      end
    end
  end
end
