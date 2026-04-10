# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Blogs
        class Posts
          # @return [HubSpotSDK::Resources::Cms::Blogs::Posts::Batch]
          attr_reader :batch

          # @return [HubSpotSDK::Resources::Cms::Blogs::Posts::MultiLanguage]
          attr_reader :multi_language

          # @return [HubSpotSDK::Resources::Cms::Blogs::Posts::Revisions]
          attr_reader :revisions

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::PostCreateParams} for more details.
          #
          # Create a new blog post, specifying its content in the request body.
          #
          # @overload create(id:, ab_status:, ab_test_id:, archived_at:, archived_in_dashboard:, attached_stylesheets:, author_name:, blog_author_id:, campaign:, category_id:, content_group_id:, content_type_category:, created:, created_by_id:, currently_published:, current_state:, domain:, dynamic_page_data_source_id:, dynamic_page_data_source_type:, dynamic_page_hub_db_table_id:, enable_domain_stylesheets:, enable_google_amp_output_override:, enable_layout_stylesheets:, featured_image:, featured_image_alt_text:, folder_id:, footer_html:, head_html:, html_title:, include_default_custom_css:, language:, layout_sections:, link_rel_canonical_url:, mab_experiment_id:, meta_description:, name:, page_expiry_date:, page_expiry_enabled:, page_expiry_redirect_id:, page_expiry_redirect_url:, password:, post_body:, post_summary:, public_access_rules:, public_access_rules_enabled:, publish_date:, publish_immediately:, rss_body:, rss_summary:, slug:, state:, tag_ids:, theme_settings_values:, translated_from_id:, translations:, updated:, updated_by_id:, url:, use_featured_image:, widget_containers:, widgets:, request_options: {})
          #
          # @param id [String] The unique ID of the Blog Post.
          #
          # @param ab_status [Symbol, HubSpotSDK::Models::Cms::Blogs::BlogPost::AbStatus] The status of the AB test associated with this blog post, if applicable
          #
          # @param ab_test_id [String] The ID of the AB test associated with this page, if applicable
          #
          # @param archived_at [Integer] The timestamp (ISO8601 format) when this Blog Post was deleted.
          #
          # @param archived_in_dashboard [Boolean] If True, the post will not show up in your dashboard, although the post could st
          #
          # @param attached_stylesheets [Array<Hash{Symbol=>Object}>] List of stylesheets to attach to this blog post. These stylesheets are attached
          #
          # @param author_name [String] The name of the user that updated this Blog Post.
          #
          # @param blog_author_id [String] The ID of the Blog Author associated with this Blog Post.
          #
          # @param campaign [String] The GUID of the marketing campaign this Blog Post is a part of.
          #
          # @param category_id [Integer] ID of the type of object this is. Should always .
          #
          # @param content_group_id [String] The ID of the parent Blog this Blog Post is associated with.
          #
          # @param content_type_category [Symbol, HubSpotSDK::Models::Cms::Blogs::BlogPost::ContentTypeCategory] An ENUM descibing the type of this object. Should always be BLOG_POST.
          #
          # @param created [Time] The timestamp (ISO8601 format) when this Blog Post was created.
          #
          # @param created_by_id [String] The ID of the user that created this Blog Post.
          #
          # @param currently_published [Boolean] Whether the post is published (true or false)
          #
          # @param current_state [Symbol, HubSpotSDK::Models::Cms::Blogs::BlogPost::CurrentState] A generated ENUM descibing the current state of this Blog Post. Should always ma
          #
          # @param domain [String] The domain this Blog Post will resolve to. If null, the Blog Post will default t
          #
          # @param dynamic_page_data_source_id [String] The identifier for the data source used by the dynamic page.
          #
          # @param dynamic_page_data_source_type [Integer] The type of data source used by the dynamic page.
          #
          # @param dynamic_page_hub_db_table_id [String] The ID of the HubDB table this Blog Post references, if applicable
          #
          # @param enable_domain_stylesheets [Boolean] Boolean to determine whether or not the styles from the template should be appli
          #
          # @param enable_google_amp_output_override [Boolean] Boolean to allow overriding the AMP settings for the blog.
          #
          # @param enable_layout_stylesheets [Boolean] Boolean to determine whether or not the styles from the template should be appli
          #
          # @param featured_image [String] The featuredImage of this Blog Post.
          #
          # @param featured_image_alt_text [String] Alt Text of the featuredImage.
          #
          # @param folder_id [String] Unique identifier of associated folder
          #
          # @param footer_html [String] Custom HTML for embed codes, javascript that should be placed before the </body>
          #
          # @param head_html [String] Custom HTML for embed codes, javascript, etc. that goes in the <head> tag of the
          #
          # @param html_title [String] The html title of this Blog Post.
          #
          # @param include_default_custom_css [Boolean] Boolean to determine whether or not the Primary CSS Files should be applied.
          #
          # @param language [Symbol, HubSpotSDK::Models::Cms::Blogs::BlogPost::Language] The explicitly defined ISO 639 language code of the Blog Post. If null, the Blog
          #
          # @param layout_sections [Hash{Symbol=>HubSpotSDK::Models::Cms::LayoutSection}] A structure detailing the layout sections of the blog post.
          #
          # @param link_rel_canonical_url [String] Optional override to set the URL to be used in the rel=canonical link tag on the
          #
          # @param mab_experiment_id [String] Unique identifier of the MAB Experiment
          #
          # @param meta_description [String] A description that goes in <meta> tag on the page.
          #
          # @param name [String] The internal name of the Blog Post.
          #
          # @param page_expiry_date [Integer] The date at which this blog post should expire and begin redirecting to another
          #
          # @param page_expiry_enabled [Boolean] Boolean describing if the page expiration feature is enabled for this blog post.
          #
          # @param page_expiry_redirect_id [Integer] The ID of another page this blog post's url should redirect to once this blog po
          #
          # @param page_expiry_redirect_url [String] The URL this blog post's url should redirect to once it expires. Should only set
          #
          # @param password [String] Set this to create a password protected page. Entering the password will be requ
          #
          # @param post_body [String] The HTML of the main post body.
          #
          # @param post_summary [String] The summary of the blog post that will appear on the main listing page.
          #
          # @param public_access_rules [Array<Object>] Rules for require member registration to access private content.
          #
          # @param public_access_rules_enabled [Boolean] Boolean to determine whether or not to respect publicAccessRules.
          #
          # @param publish_date [Time] The date (ISO8601 format) the blog post is to be published at.
          #
          # @param publish_immediately [Boolean] Set this to true if you want to be published immediately when the schedule publi
          #
          # @param rss_body [String] The contents of the RSS body for this Blog Post.
          #
          # @param rss_summary [String] The contents of the RSS summary for this Blog Post.
          #
          # @param slug [String] The path of the this blog post. This field is appended to the domain to construc
          #
          # @param state [String] An ENUM descibing the current state of this Blog Post.
          #
          # @param tag_ids [Array<Integer>] List of IDs for the tags associated with this Blog Post.
          #
          # @param theme_settings_values [Hash{Symbol=>Object}] A collection of settings specific to the theme applied to the blog post.
          #
          # @param translated_from_id [String] ID of the primary blog post this object was translated from.
          #
          # @param translations [Hash{Symbol=>HubSpotSDK::Models::Cms::ContentLanguageVariation}] A map of translations for the blog post, each associated with a specific languag
          #
          # @param updated [Time] The timestamp (ISO8601 format) when this Blog Post was updated.
          #
          # @param updated_by_id [String] The ID of the user that updated this Blog Post.
          #
          # @param url [String] A generated field representing the URL of this blog post.
          #
          # @param use_featured_image [Boolean] Boolean to determine if this post should use a featuredImage.
          #
          # @param widget_containers [Hash{Symbol=>Object}] A data structure containing the data for all the modules inside the containers f
          #
          # @param widgets [Hash{Symbol=>Object}] A data structure containing the data for all the modules for this page.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostCreateParams
          def create(params)
            parsed, options = HubSpotSDK::Cms::Blogs::PostCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/posts",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::PostUpdateParams} for more details.
          #
          # Partially updates a single blog post by ID. You only need to specify the values
          # that you want to update.
          #
          # @overload update(object_id_, id:, ab_status:, ab_test_id:, archived_at:, archived_in_dashboard:, attached_stylesheets:, author_name:, blog_author_id:, campaign:, category_id:, content_group_id:, content_type_category:, created:, created_by_id:, currently_published:, current_state:, domain:, dynamic_page_data_source_id:, dynamic_page_data_source_type:, dynamic_page_hub_db_table_id:, enable_domain_stylesheets:, enable_google_amp_output_override:, enable_layout_stylesheets:, featured_image:, featured_image_alt_text:, folder_id:, footer_html:, head_html:, html_title:, include_default_custom_css:, language:, layout_sections:, link_rel_canonical_url:, mab_experiment_id:, meta_description:, name:, page_expiry_date:, page_expiry_enabled:, page_expiry_redirect_id:, page_expiry_redirect_url:, password:, post_body:, post_summary:, public_access_rules:, public_access_rules_enabled:, publish_date:, publish_immediately:, rss_body:, rss_summary:, slug:, state:, tag_ids:, theme_settings_values:, translated_from_id:, translations:, updated:, updated_by_id:, url:, use_featured_image:, widget_containers:, widgets:, archived: nil, request_options: {})
          #
          # @param object_id_ [String] Path param
          #
          # @param id [String] Body param: The unique ID of the Blog Post.
          #
          # @param ab_status [Symbol, HubSpotSDK::Models::Cms::Blogs::BlogPost::AbStatus] Body param: The status of the AB test associated with this blog post, if applica
          #
          # @param ab_test_id [String] Body param: The ID of the AB test associated with this page, if applicable
          #
          # @param archived_at [Integer] Body param: The timestamp (ISO8601 format) when this Blog Post was deleted.
          #
          # @param archived_in_dashboard [Boolean] Body param: If True, the post will not show up in your dashboard, although the p
          #
          # @param attached_stylesheets [Array<Hash{Symbol=>Object}>] Body param: List of stylesheets to attach to this blog post. These stylesheets a
          #
          # @param author_name [String] Body param: The name of the user that updated this Blog Post.
          #
          # @param blog_author_id [String] Body param: The ID of the Blog Author associated with this Blog Post.
          #
          # @param campaign [String] Body param: The GUID of the marketing campaign this Blog Post is a part of.
          #
          # @param category_id [Integer] Body param: ID of the type of object this is. Should always .
          #
          # @param content_group_id [String] Body param: The ID of the parent Blog this Blog Post is associated with.
          #
          # @param content_type_category [Symbol, HubSpotSDK::Models::Cms::Blogs::BlogPost::ContentTypeCategory] Body param: An ENUM descibing the type of this object. Should always be BLOG_POS
          #
          # @param created [Time] Body param: The timestamp (ISO8601 format) when this Blog Post was created.
          #
          # @param created_by_id [String] Body param: The ID of the user that created this Blog Post.
          #
          # @param currently_published [Boolean] Body param: Whether the post is published (true or false)
          #
          # @param current_state [Symbol, HubSpotSDK::Models::Cms::Blogs::BlogPost::CurrentState] Body param: A generated ENUM descibing the current state of this Blog Post. Shou
          #
          # @param domain [String] Body param: The domain this Blog Post will resolve to. If null, the Blog Post wi
          #
          # @param dynamic_page_data_source_id [String] Body param: The identifier for the data source used by the dynamic page.
          #
          # @param dynamic_page_data_source_type [Integer] Body param: The type of data source used by the dynamic page.
          #
          # @param dynamic_page_hub_db_table_id [String] Body param: The ID of the HubDB table this Blog Post references, if applicable
          #
          # @param enable_domain_stylesheets [Boolean] Body param: Boolean to determine whether or not the styles from the template sho
          #
          # @param enable_google_amp_output_override [Boolean] Body param: Boolean to allow overriding the AMP settings for the blog.
          #
          # @param enable_layout_stylesheets [Boolean] Body param: Boolean to determine whether or not the styles from the template sho
          #
          # @param featured_image [String] Body param: The featuredImage of this Blog Post.
          #
          # @param featured_image_alt_text [String] Body param: Alt Text of the featuredImage.
          #
          # @param folder_id [String] Body param: Unique identifier of associated folder
          #
          # @param footer_html [String] Body param: Custom HTML for embed codes, javascript that should be placed before
          #
          # @param head_html [String] Body param: Custom HTML for embed codes, javascript, etc. that goes in the <head
          #
          # @param html_title [String] Body param: The html title of this Blog Post.
          #
          # @param include_default_custom_css [Boolean] Body param: Boolean to determine whether or not the Primary CSS Files should be
          #
          # @param language [Symbol, HubSpotSDK::Models::Cms::Blogs::BlogPost::Language] Body param: The explicitly defined ISO 639 language code of the Blog Post. If nu
          #
          # @param layout_sections [Hash{Symbol=>HubSpotSDK::Models::Cms::LayoutSection}] Body param: A structure detailing the layout sections of the blog post.
          #
          # @param link_rel_canonical_url [String] Body param: Optional override to set the URL to be used in the rel=canonical lin
          #
          # @param mab_experiment_id [String] Body param: Unique identifier of the MAB Experiment
          #
          # @param meta_description [String] Body param: A description that goes in <meta> tag on the page.
          #
          # @param name [String] Body param: The internal name of the Blog Post.
          #
          # @param page_expiry_date [Integer] Body param: The date at which this blog post should expire and begin redirecting
          #
          # @param page_expiry_enabled [Boolean] Body param: Boolean describing if the page expiration feature is enabled for thi
          #
          # @param page_expiry_redirect_id [Integer] Body param: The ID of another page this blog post's url should redirect to once
          #
          # @param page_expiry_redirect_url [String] Body param: The URL this blog post's url should redirect to once it expires. Sho
          #
          # @param password [String] Body param: Set this to create a password protected page. Entering the password
          #
          # @param post_body [String] Body param: The HTML of the main post body.
          #
          # @param post_summary [String] Body param: The summary of the blog post that will appear on the main listing pa
          #
          # @param public_access_rules [Array<Object>] Body param: Rules for require member registration to access private content.
          #
          # @param public_access_rules_enabled [Boolean] Body param: Boolean to determine whether or not to respect publicAccessRules.
          #
          # @param publish_date [Time] Body param: The date (ISO8601 format) the blog post is to be published at.
          #
          # @param publish_immediately [Boolean] Body param: Set this to true if you want to be published immediately when the sc
          #
          # @param rss_body [String] Body param: The contents of the RSS body for this Blog Post.
          #
          # @param rss_summary [String] Body param: The contents of the RSS summary for this Blog Post.
          #
          # @param slug [String] Body param: The path of the this blog post. This field is appended to the domain
          #
          # @param state [String] Body param: An ENUM descibing the current state of this Blog Post.
          #
          # @param tag_ids [Array<Integer>] Body param: List of IDs for the tags associated with this Blog Post.
          #
          # @param theme_settings_values [Hash{Symbol=>Object}] Body param: A collection of settings specific to the theme applied to the blog p
          #
          # @param translated_from_id [String] Body param: ID of the primary blog post this object was translated from.
          #
          # @param translations [Hash{Symbol=>HubSpotSDK::Models::Cms::ContentLanguageVariation}] Body param: A map of translations for the blog post, each associated with a spec
          #
          # @param updated [Time] Body param: The timestamp (ISO8601 format) when this Blog Post was updated.
          #
          # @param updated_by_id [String] Body param: The ID of the user that updated this Blog Post.
          #
          # @param url [String] Body param: A generated field representing the URL of this blog post.
          #
          # @param use_featured_image [Boolean] Body param: Boolean to determine if this post should use a featuredImage.
          #
          # @param widget_containers [Hash{Symbol=>Object}] Body param: A data structure containing the data for all the modules inside the
          #
          # @param widgets [Hash{Symbol=>Object}] Body param: A data structure containing the data for all the modules for this pa
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostUpdateParams
          def update(object_id_, params)
            query_params = [:archived]
            parsed, options = HubSpotSDK::Cms::Blogs::PostUpdateParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :patch,
              path: ["cms/blogs/2026-03/posts/%1$s", object_id_],
              query: query,
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed.except(*query_params),
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::PostListParams} for more details.
          #
          # @overload list(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param created_after [Time]
          #
          # @param created_at [Time]
          #
          # @param created_before [Time]
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param property [String]
          #
          # @param sort [Array<String>]
          #
          # @param updated_after [Time]
          #
          # @param updated_at [Time]
          #
          # @param updated_before [Time]
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostListParams
          def list(params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::PostListParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/blogs/2026-03/posts/cursor",
              query: query.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Delete a blog post by ID.
          #
          # @overload delete(object_id_, archived: nil, request_options: {})
          #
          # @param object_id_ [String]
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostDeleteParams
          def delete(object_id_, params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::PostDeleteParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :delete,
              path: ["cms/blogs/2026-03/posts/%1$s", object_id_],
              query: query,
              model: NilClass,
              options: options
            )
          end

          # Clone a blog post, making a copy of it in a new blog post.
          #
          # @overload clone_(id:, clone_name: nil, request_options: {})
          #
          # @param id [String] ID of the object to be cloned.
          #
          # @param clone_name [String] Name of the cloned object.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostCloneParams
          def clone_(params)
            parsed, options = HubSpotSDK::Cms::Blogs::PostCloneParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/posts/clone",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # Retrieve a blog post by the post ID.
          #
          # @overload get(object_id_, archived: nil, property: nil, request_options: {})
          #
          # @param object_id_ [String]
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param property [String]
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostGetParams
          def get(object_id_, params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::PostGetParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["cms/blogs/2026-03/posts/%1$s", object_id_],
              query: query,
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Retrieve the full draft version of a blog post.
          #
          # @overload get_draft_by_id(object_id_, request_options: {})
          #
          # @param object_id_ [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostGetDraftByIDParams
          def get_draft_by_id(object_id_, params = {})
            @client.request(
              method: :get,
              path: ["cms/blogs/2026-03/posts/%1$s/draft", object_id_],
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::PostListAuthorsParams} for more details.
          #
          # @overload list_authors(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param created_after [Time]
          #
          # @param created_at [Time]
          #
          # @param created_before [Time]
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param property [String]
          #
          # @param sort [Array<String>]
          #
          # @param updated_after [Time]
          #
          # @param updated_at [Time]
          #
          # @param updated_before [Time]
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostListAuthorsParams
          def list_authors(params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::PostListAuthorsParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/blogs/2026-03/authors/cursor",
              query: query.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::PostListTagsParams} for more details.
          #
          # @overload list_tags(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param created_after [Time]
          #
          # @param created_at [Time]
          #
          # @param created_before [Time]
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param property [String]
          #
          # @param sort [Array<String>]
          #
          # @param updated_after [Time]
          #
          # @param updated_at [Time]
          #
          # @param updated_before [Time]
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostListTagsParams
          def list_tags(params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::PostListTagsParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/blogs/2026-03/tags/cursor",
              query: query.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Publish the draft version of the blog post, sending its content to the live
          # page.
          #
          # @overload push_live(object_id_, request_options: {})
          #
          # @param object_id_ [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostPushLiveParams
          def push_live(object_id_, params = {})
            @client.request(
              method: :post,
              path: ["cms/blogs/2026-03/posts/%1$s/draft/push-live", object_id_],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::PostQueryParams} for more details.
          #
          # @overload query(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param created_after [Time]
          #
          # @param created_at [Time]
          #
          # @param created_before [Time]
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param property [String]
          #
          # @param sort [Array<String>]
          #
          # @param updated_after [Time]
          #
          # @param updated_at [Time]
          #
          # @param updated_before [Time]
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostQueryParams
          def query(params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::PostQueryParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/blogs/2026-03/posts/cursor/query",
              query: query.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::PostQueryAuthorsParams} for more details.
          #
          # @overload query_authors(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param created_after [Time]
          #
          # @param created_at [Time]
          #
          # @param created_before [Time]
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param property [String]
          #
          # @param sort [Array<String>]
          #
          # @param updated_after [Time]
          #
          # @param updated_at [Time]
          #
          # @param updated_before [Time]
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostQueryAuthorsParams
          def query_authors(params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::PostQueryAuthorsParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/blogs/2026-03/authors/cursor/query",
              query: query.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::PostQueryTagsParams} for more details.
          #
          # @overload query_tags(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param created_after [Time]
          #
          # @param created_at [Time]
          #
          # @param created_before [Time]
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param property [String]
          #
          # @param sort [Array<String>]
          #
          # @param updated_after [Time]
          #
          # @param updated_at [Time]
          #
          # @param updated_before [Time]
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostQueryTagsParams
          def query_tags(params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::PostQueryTagsParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/blogs/2026-03/tags/cursor/query",
              query: query.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Discard all drafted content, resetting the draft to contain the content in the
          # currently published version.
          #
          # @overload reset_draft(object_id_, request_options: {})
          #
          # @param object_id_ [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostResetDraftParams
          def reset_draft(object_id_, params = {})
            @client.request(
              method: :post,
              path: ["cms/blogs/2026-03/posts/%1$s/draft/reset", object_id_],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Schedule a blog post to be published at a specified time.
          #
          # @overload schedule(id:, publish_date:, request_options: {})
          #
          # @param id [String] The ID of the object to be scheduled.
          #
          # @param publish_date [Time] The date the object should transition from scheduled to published.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostScheduleParams
          def schedule(params)
            parsed, options = HubSpotSDK::Cms::Blogs::PostScheduleParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/posts/schedule",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::PostUpdateDraftParams} for more details.
          #
          # Partially updates the draft version of a single blog post by ID. You only need
          # to specify the values that you want to update.
          #
          # @overload update_draft(object_id_, id:, ab_status:, ab_test_id:, archived_at:, archived_in_dashboard:, attached_stylesheets:, author_name:, blog_author_id:, campaign:, category_id:, content_group_id:, content_type_category:, created:, created_by_id:, currently_published:, current_state:, domain:, dynamic_page_data_source_id:, dynamic_page_data_source_type:, dynamic_page_hub_db_table_id:, enable_domain_stylesheets:, enable_google_amp_output_override:, enable_layout_stylesheets:, featured_image:, featured_image_alt_text:, folder_id:, footer_html:, head_html:, html_title:, include_default_custom_css:, language:, layout_sections:, link_rel_canonical_url:, mab_experiment_id:, meta_description:, name:, page_expiry_date:, page_expiry_enabled:, page_expiry_redirect_id:, page_expiry_redirect_url:, password:, post_body:, post_summary:, public_access_rules:, public_access_rules_enabled:, publish_date:, publish_immediately:, rss_body:, rss_summary:, slug:, state:, tag_ids:, theme_settings_values:, translated_from_id:, translations:, updated:, updated_by_id:, url:, use_featured_image:, widget_containers:, widgets:, request_options: {})
          #
          # @param object_id_ [String]
          #
          # @param id [String] The unique ID of the Blog Post.
          #
          # @param ab_status [Symbol, HubSpotSDK::Models::Cms::Blogs::BlogPost::AbStatus] The status of the AB test associated with this blog post, if applicable
          #
          # @param ab_test_id [String] The ID of the AB test associated with this page, if applicable
          #
          # @param archived_at [Integer] The timestamp (ISO8601 format) when this Blog Post was deleted.
          #
          # @param archived_in_dashboard [Boolean] If True, the post will not show up in your dashboard, although the post could st
          #
          # @param attached_stylesheets [Array<Hash{Symbol=>Object}>] List of stylesheets to attach to this blog post. These stylesheets are attached
          #
          # @param author_name [String] The name of the user that updated this Blog Post.
          #
          # @param blog_author_id [String] The ID of the Blog Author associated with this Blog Post.
          #
          # @param campaign [String] The GUID of the marketing campaign this Blog Post is a part of.
          #
          # @param category_id [Integer] ID of the type of object this is. Should always .
          #
          # @param content_group_id [String] The ID of the parent Blog this Blog Post is associated with.
          #
          # @param content_type_category [Symbol, HubSpotSDK::Models::Cms::Blogs::BlogPost::ContentTypeCategory] An ENUM descibing the type of this object. Should always be BLOG_POST.
          #
          # @param created [Time] The timestamp (ISO8601 format) when this Blog Post was created.
          #
          # @param created_by_id [String] The ID of the user that created this Blog Post.
          #
          # @param currently_published [Boolean] Whether the post is published (true or false)
          #
          # @param current_state [Symbol, HubSpotSDK::Models::Cms::Blogs::BlogPost::CurrentState] A generated ENUM descibing the current state of this Blog Post. Should always ma
          #
          # @param domain [String] The domain this Blog Post will resolve to. If null, the Blog Post will default t
          #
          # @param dynamic_page_data_source_id [String] The identifier for the data source used by the dynamic page.
          #
          # @param dynamic_page_data_source_type [Integer] The type of data source used by the dynamic page.
          #
          # @param dynamic_page_hub_db_table_id [String] The ID of the HubDB table this Blog Post references, if applicable
          #
          # @param enable_domain_stylesheets [Boolean] Boolean to determine whether or not the styles from the template should be appli
          #
          # @param enable_google_amp_output_override [Boolean] Boolean to allow overriding the AMP settings for the blog.
          #
          # @param enable_layout_stylesheets [Boolean] Boolean to determine whether or not the styles from the template should be appli
          #
          # @param featured_image [String] The featuredImage of this Blog Post.
          #
          # @param featured_image_alt_text [String] Alt Text of the featuredImage.
          #
          # @param folder_id [String] Unique identifier of associated folder
          #
          # @param footer_html [String] Custom HTML for embed codes, javascript that should be placed before the </body>
          #
          # @param head_html [String] Custom HTML for embed codes, javascript, etc. that goes in the <head> tag of the
          #
          # @param html_title [String] The html title of this Blog Post.
          #
          # @param include_default_custom_css [Boolean] Boolean to determine whether or not the Primary CSS Files should be applied.
          #
          # @param language [Symbol, HubSpotSDK::Models::Cms::Blogs::BlogPost::Language] The explicitly defined ISO 639 language code of the Blog Post. If null, the Blog
          #
          # @param layout_sections [Hash{Symbol=>HubSpotSDK::Models::Cms::LayoutSection}] A structure detailing the layout sections of the blog post.
          #
          # @param link_rel_canonical_url [String] Optional override to set the URL to be used in the rel=canonical link tag on the
          #
          # @param mab_experiment_id [String] Unique identifier of the MAB Experiment
          #
          # @param meta_description [String] A description that goes in <meta> tag on the page.
          #
          # @param name [String] The internal name of the Blog Post.
          #
          # @param page_expiry_date [Integer] The date at which this blog post should expire and begin redirecting to another
          #
          # @param page_expiry_enabled [Boolean] Boolean describing if the page expiration feature is enabled for this blog post.
          #
          # @param page_expiry_redirect_id [Integer] The ID of another page this blog post's url should redirect to once this blog po
          #
          # @param page_expiry_redirect_url [String] The URL this blog post's url should redirect to once it expires. Should only set
          #
          # @param password [String] Set this to create a password protected page. Entering the password will be requ
          #
          # @param post_body [String] The HTML of the main post body.
          #
          # @param post_summary [String] The summary of the blog post that will appear on the main listing page.
          #
          # @param public_access_rules [Array<Object>] Rules for require member registration to access private content.
          #
          # @param public_access_rules_enabled [Boolean] Boolean to determine whether or not to respect publicAccessRules.
          #
          # @param publish_date [Time] The date (ISO8601 format) the blog post is to be published at.
          #
          # @param publish_immediately [Boolean] Set this to true if you want to be published immediately when the schedule publi
          #
          # @param rss_body [String] The contents of the RSS body for this Blog Post.
          #
          # @param rss_summary [String] The contents of the RSS summary for this Blog Post.
          #
          # @param slug [String] The path of the this blog post. This field is appended to the domain to construc
          #
          # @param state [String] An ENUM descibing the current state of this Blog Post.
          #
          # @param tag_ids [Array<Integer>] List of IDs for the tags associated with this Blog Post.
          #
          # @param theme_settings_values [Hash{Symbol=>Object}] A collection of settings specific to the theme applied to the blog post.
          #
          # @param translated_from_id [String] ID of the primary blog post this object was translated from.
          #
          # @param translations [Hash{Symbol=>HubSpotSDK::Models::Cms::ContentLanguageVariation}] A map of translations for the blog post, each associated with a specific languag
          #
          # @param updated [Time] The timestamp (ISO8601 format) when this Blog Post was updated.
          #
          # @param updated_by_id [String] The ID of the user that updated this Blog Post.
          #
          # @param url [String] A generated field representing the URL of this blog post.
          #
          # @param use_featured_image [Boolean] Boolean to determine if this post should use a featuredImage.
          #
          # @param widget_containers [Hash{Symbol=>Object}] A data structure containing the data for all the modules inside the containers f
          #
          # @param widgets [Hash{Symbol=>Object}] A data structure containing the data for all the modules for this page.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::PostUpdateDraftParams
          def update_draft(object_id_, params)
            parsed, options = HubSpotSDK::Cms::Blogs::PostUpdateDraftParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["cms/blogs/2026-03/posts/%1$s/draft", object_id_],
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
            @batch = HubSpotSDK::Resources::Cms::Blogs::Posts::Batch.new(client: client)
            @multi_language = HubSpotSDK::Resources::Cms::Blogs::Posts::MultiLanguage.new(client: client)
            @revisions = HubSpotSDK::Resources::Cms::Blogs::Posts::Revisions.new(client: client)
          end
        end
      end
    end
  end
end
