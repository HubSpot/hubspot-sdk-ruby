# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Posts
          # @return [HubspotSDK::Resources::Cms::Blogs::Posts::Batch]
          attr_reader :batch

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::PostCreateParams} for more details.
          #
          # Create a new blog post, specifying its content in the request body.
          #
          # @overload create(id:, ab_status:, ab_test_id:, archived_at:, archived_in_dashboard:, attached_stylesheets:, author_name:, blog_author_id:, campaign:, category_id:, content_group_id:, content_type_category:, created:, created_by_id:, currently_published:, current_state:, domain:, dynamic_page_data_source_id:, dynamic_page_data_source_type:, dynamic_page_hub_db_table_id:, enable_domain_stylesheets:, enable_google_amp_output_override:, enable_layout_stylesheets:, featured_image:, featured_image_alt_text:, folder_id:, footer_html:, head_html:, html_title:, include_default_custom_css:, language:, layout_sections:, link_rel_canonical_url:, mab_experiment_id:, meta_description:, name:, page_expiry_date:, page_expiry_enabled:, page_expiry_redirect_id:, page_expiry_redirect_url:, password:, post_body:, post_summary:, public_access_rules:, public_access_rules_enabled:, publish_date:, publish_immediately:, rss_body:, rss_summary:, slug:, state:, tag_ids:, theme_settings_values:, translated_from_id:, translations:, updated:, updated_by_id:, url:, use_featured_image:, widget_containers:, widgets:, request_options: {})
          #
          # @param id [String] The unique ID of the blog post.
          #
          # @param ab_status [Symbol, HubspotSDK::Models::Cms::Blogs::BlogPost::AbStatus]
          #
          # @param ab_test_id [String]
          #
          # @param archived_at [Integer] The timestamp (ISO8601 format) when this Blog Post was deleted.
          #
          # @param archived_in_dashboard [Boolean] If True, the post will not show up in your dashboard, although the post could st
          #
          # @param attached_stylesheets [Array<Hash{Symbol=>Object}>] List of stylesheets to attach to this blog post. These stylesheets are attached
          #
          # @param author_name [String] The name of the blog author associated with the post.
          #
          # @param blog_author_id [String] The ID of the blog author associated with this post.
          #
          # @param campaign [String] The GUID of the marketing campaign the post is associated with.
          #
          # @param category_id [Integer] ID of the object type.
          #
          # @param content_group_id [String] The ID of the post's parent blog.
          #
          # @param content_type_category [Symbol, HubspotSDK::Models::Cms::Blogs::BlogPost::ContentTypeCategory] An ENUM descibing the type of this object. Should always be BLOG_POST.
          #
          # @param created [Time]
          #
          # @param created_by_id [String] The ID of the user that created the post.
          #
          # @param currently_published [Boolean]
          #
          # @param current_state [Symbol, HubspotSDK::Models::Cms::Blogs::BlogPost::CurrentState] A generated ENUM descibing the current state of this Blog Post. Should always ma
          #
          # @param domain [String] The domain that the post lives on. If null, the post will default to the domain
          #
          # @param dynamic_page_data_source_id [String]
          #
          # @param dynamic_page_data_source_type [Integer]
          #
          # @param dynamic_page_hub_db_table_id [String] For dynamic HubDB pages,
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
          # @param folder_id [String]
          #
          # @param footer_html [String] Custom HTML for embed codes, javascript that should be placed before the </body>
          #
          # @param head_html [String] Custom HTML for embed codes, javascript, etc. that goes in the <head> tag of the
          #
          # @param html_title [String] The HTML title of the post.
          #
          # @param include_default_custom_css [Boolean] Boolean to determine whether or not the Primary CSS Files should be applied.
          #
          # @param language [Symbol, HubspotSDK::Models::Cms::Blogs::BlogPost::Language] The explicitly defined ISO 639 language code of the post. If null, the post will
          #
          # @param layout_sections [Hash{Symbol=>HubspotSDK::Models::Cms::LayoutSection}]
          #
          # @param link_rel_canonical_url [String] Optional override to set the URL to be used in the rel=canonical link tag on the
          #
          # @param mab_experiment_id [String]
          #
          # @param meta_description [String] A description that goes in <meta> tag on the page.
          #
          # @param name [String] The internal name of the post.
          #
          # @param page_expiry_date [Integer]
          #
          # @param page_expiry_enabled [Boolean]
          #
          # @param page_expiry_redirect_id [Integer]
          #
          # @param page_expiry_redirect_url [String]
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
          # @param slug [String] The URL slug of the blog post. This field is appended to the domain to construct
          #
          # @param state [String] An enumeration describing the current publish state of the post.
          #
          # @param tag_ids [Array<Integer>] The IDs of the tags associated with this post.
          #
          # @param theme_settings_values [Hash{Symbol=>Object}]
          #
          # @param translated_from_id [String] ID of the primary blog post that this post was translated from.
          #
          # @param translations [Hash{Symbol=>HubspotSDK::Models::Cms::ContentLanguageVariation}]
          #
          # @param updated [Time]
          #
          # @param updated_by_id [String] The ID of the user that updated the post.
          #
          # @param url [String] A generated field representing the URL of this blog post.
          #
          # @param use_featured_image [Boolean] Boolean to determine if this post should use a featured image.
          #
          # @param widget_containers [Hash{Symbol=>Object}] A data structure containing the data for all the modules inside the containers f
          #
          # @param widgets [Hash{Symbol=>Object}] A data structure containing the data for all the modules for this page.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BlogPost]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostCreateParams
          def create(params)
            parsed, options = HubspotSDK::Cms::Blogs::PostCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/posts",
              body: parsed,
              model: HubspotSDK::Cms::Blogs::BlogPost,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::PostUpdateParams} for more details.
          #
          # Partially updates a single blog post by ID. You only need to specify the values
          # that you want to update.
          #
          # @overload update(object_id_, id:, ab_status:, ab_test_id:, archived_at:, archived_in_dashboard:, attached_stylesheets:, author_name:, blog_author_id:, campaign:, category_id:, content_group_id:, content_type_category:, created:, created_by_id:, currently_published:, current_state:, domain:, dynamic_page_data_source_id:, dynamic_page_data_source_type:, dynamic_page_hub_db_table_id:, enable_domain_stylesheets:, enable_google_amp_output_override:, enable_layout_stylesheets:, featured_image:, featured_image_alt_text:, folder_id:, footer_html:, head_html:, html_title:, include_default_custom_css:, language:, layout_sections:, link_rel_canonical_url:, mab_experiment_id:, meta_description:, name:, page_expiry_date:, page_expiry_enabled:, page_expiry_redirect_id:, page_expiry_redirect_url:, password:, post_body:, post_summary:, public_access_rules:, public_access_rules_enabled:, publish_date:, publish_immediately:, rss_body:, rss_summary:, slug:, state:, tag_ids:, theme_settings_values:, translated_from_id:, translations:, updated:, updated_by_id:, url:, use_featured_image:, widget_containers:, widgets:, archived: nil, request_options: {})
          #
          # @param object_id_ [String] Path param: The ID of the blog post to update.
          #
          # @param id [String] Body param: The unique ID of the blog post.
          #
          # @param ab_status [Symbol, HubspotSDK::Models::Cms::Blogs::BlogPost::AbStatus] Body param:
          #
          # @param ab_test_id [String] Body param:
          #
          # @param archived_at [Integer] Body param: The timestamp (ISO8601 format) when this Blog Post was deleted.
          #
          # @param archived_in_dashboard [Boolean] Body param: If True, the post will not show up in your dashboard, although the p
          #
          # @param attached_stylesheets [Array<Hash{Symbol=>Object}>] Body param: List of stylesheets to attach to this blog post. These stylesheets a
          #
          # @param author_name [String] Body param: The name of the blog author associated with the post.
          #
          # @param blog_author_id [String] Body param: The ID of the blog author associated with this post.
          #
          # @param campaign [String] Body param: The GUID of the marketing campaign the post is associated with.
          #
          # @param category_id [Integer] Body param: ID of the object type.
          #
          # @param content_group_id [String] Body param: The ID of the post's parent blog.
          #
          # @param content_type_category [Symbol, HubspotSDK::Models::Cms::Blogs::BlogPost::ContentTypeCategory] Body param: An ENUM descibing the type of this object. Should always be BLOG_POS
          #
          # @param created [Time] Body param:
          #
          # @param created_by_id [String] Body param: The ID of the user that created the post.
          #
          # @param currently_published [Boolean] Body param:
          #
          # @param current_state [Symbol, HubspotSDK::Models::Cms::Blogs::BlogPost::CurrentState] Body param: A generated ENUM descibing the current state of this Blog Post. Shou
          #
          # @param domain [String] Body param: The domain that the post lives on. If null, the post will default to
          #
          # @param dynamic_page_data_source_id [String] Body param:
          #
          # @param dynamic_page_data_source_type [Integer] Body param:
          #
          # @param dynamic_page_hub_db_table_id [String] Body param: For dynamic HubDB pages,
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
          # @param folder_id [String] Body param:
          #
          # @param footer_html [String] Body param: Custom HTML for embed codes, javascript that should be placed before
          #
          # @param head_html [String] Body param: Custom HTML for embed codes, javascript, etc. that goes in the <head
          #
          # @param html_title [String] Body param: The HTML title of the post.
          #
          # @param include_default_custom_css [Boolean] Body param: Boolean to determine whether or not the Primary CSS Files should be
          #
          # @param language [Symbol, HubspotSDK::Models::Cms::Blogs::BlogPost::Language] Body param: The explicitly defined ISO 639 language code of the post. If null, t
          #
          # @param layout_sections [Hash{Symbol=>HubspotSDK::Models::Cms::LayoutSection}] Body param:
          #
          # @param link_rel_canonical_url [String] Body param: Optional override to set the URL to be used in the rel=canonical lin
          #
          # @param mab_experiment_id [String] Body param:
          #
          # @param meta_description [String] Body param: A description that goes in <meta> tag on the page.
          #
          # @param name [String] Body param: The internal name of the post.
          #
          # @param page_expiry_date [Integer] Body param:
          #
          # @param page_expiry_enabled [Boolean] Body param:
          #
          # @param page_expiry_redirect_id [Integer] Body param:
          #
          # @param page_expiry_redirect_url [String] Body param:
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
          # @param slug [String] Body param: The URL slug of the blog post. This field is appended to the domain
          #
          # @param state [String] Body param: An enumeration describing the current publish state of the post.
          #
          # @param tag_ids [Array<Integer>] Body param: The IDs of the tags associated with this post.
          #
          # @param theme_settings_values [Hash{Symbol=>Object}] Body param:
          #
          # @param translated_from_id [String] Body param: ID of the primary blog post that this post was translated from.
          #
          # @param translations [Hash{Symbol=>HubspotSDK::Models::Cms::ContentLanguageVariation}] Body param:
          #
          # @param updated [Time] Body param:
          #
          # @param updated_by_id [String] Body param: The ID of the user that updated the post.
          #
          # @param url [String] Body param: A generated field representing the URL of this blog post.
          #
          # @param use_featured_image [Boolean] Body param: Boolean to determine if this post should use a featured image.
          #
          # @param widget_containers [Hash{Symbol=>Object}] Body param: A data structure containing the data for all the modules inside the
          #
          # @param widgets [Hash{Symbol=>Object}] Body param: A data structure containing the data for all the modules for this pa
          #
          # @param archived [Boolean] Query param: Specifies whether to update deleted blog posts. Defaults to `false`
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BlogPost]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostUpdateParams
          def update(object_id_, params)
            parsed, options = HubspotSDK::Cms::Blogs::PostUpdateParams.dump_request(params)
            query_params = [:archived]
            @client.request(
              method: :patch,
              path: ["cms/v3/blogs/posts/%1$s", object_id_],
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::Blogs::BlogPost,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::PostListParams} for more details.
          #
          # Retrieve all blog posts, with paging and filtering options. This method would be
          # useful for an integration that ingests posts and suggests edits.
          #
          # @overload list(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #
          # @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          # @param archived [Boolean] Specifies whether to return deleted blog posts. Defaults to `false`.
          #
          # @param created_after [Time] Only return blog posts created after the specified time.
          #
          # @param created_at [Time] Only return blog posts created at exactly the specified time.
          #
          # @param created_before [Time] Only return blog posts created before the specified time.
          #
          # @param limit [Integer] The maximum number of results to return. Default is 20.
          #
          # @param property [String]
          #
          # @param sort [Array<String>] Specifies which fields to use for sorting results. Valid fields are `createdAt`
          #
          # @param updated_after [Time] Only return blog posts last updated after the specified time.
          #
          # @param updated_at [Time] Only return blog posts last updated at exactly the specified time.
          #
          # @param updated_before [Time] Only return blog posts last updated before the specified time.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::Blogs::BlogPost>]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostListParams
          def list(params = {})
            parsed, options = HubspotSDK::Cms::Blogs::PostListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "cms/v3/blogs/posts",
              query: parsed.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Cms::Blogs::BlogPost,
              options: options
            )
          end

          # Delete a blog post by ID.
          #
          # @overload delete(object_id_, archived: nil, request_options: {})
          #
          # @param object_id_ [String] The ID of the blog post to delete.
          #
          # @param archived [Boolean] Whether to return only results that have been deleted.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostDeleteParams
          def delete(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Blogs::PostDeleteParams.dump_request(params)
            @client.request(
              method: :delete,
              path: ["cms/v3/blogs/posts/%1$s", object_id_],
              query: parsed,
              model: NilClass,
              options: options
            )
          end

          # Attach a blog post to a
          # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content).
          #
          # @overload attach_to_lang_group(id:, language:, primary_id:, primary_language: nil, request_options: {})
          #
          # @param id [String] ID of the object to add to a multi-language group.
          #
          # @param language [String] Designated language of the object to add to a multi-language group.
          #
          # @param primary_id [String] ID of primary language object in multi-language group.
          #
          # @param primary_language [String] Primary language of the multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostAttachToLangGroupParams
          def attach_to_lang_group(params)
            parsed, options = HubspotSDK::Cms::Blogs::PostAttachToLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/posts/multi-language/attach-to-lang-group",
              body: parsed,
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BlogPost]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostCloneParams
          def clone_(params)
            parsed, options = HubspotSDK::Cms::Blogs::PostCloneParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/posts/clone",
              body: parsed,
              model: HubspotSDK::Cms::Blogs::BlogPost,
              options: options
            )
          end

          # Create a new language variation from an existing blog post
          #
          # @overload create_lang_variation(id:, language: nil, request_options: {})
          #
          # @param id [String] ID of blog post to clone.
          #
          # @param language [String] Target language of new variant.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BlogPost]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostCreateLangVariationParams
          def create_lang_variation(params)
            parsed, options = HubspotSDK::Cms::Blogs::PostCreateLangVariationParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/posts/multi-language/create-language-variation",
              body: parsed,
              model: HubspotSDK::Cms::Blogs::BlogPost,
              options: options
            )
          end

          # Detach a blog post from a
          # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content).
          #
          # @overload detach_from_lang_group(id:, request_options: {})
          #
          # @param id [String] ID of the object to remove from a multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostDetachFromLangGroupParams
          def detach_from_lang_group(params)
            parsed, options = HubspotSDK::Cms::Blogs::PostDetachFromLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/posts/multi-language/detach-from-lang-group",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Retrieve a blog post by the post ID.
          #
          # @overload get(object_id_, archived: nil, property: nil, request_options: {})
          #
          # @param object_id_ [String] The ID of the blog post to retrieve.
          #
          # @param archived [Boolean] Specifies whether to return deleted blog posts. Defaults to `false`.
          #
          # @param property [String] Specific properties to return.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BlogPost]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostGetParams
          def get(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Blogs::PostGetParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["cms/v3/blogs/posts/%1$s", object_id_],
              query: parsed,
              model: HubspotSDK::Cms::Blogs::BlogPost,
              options: options
            )
          end

          # Retrieve the full draft version of a blog post.
          #
          # @overload get_draft_by_id(object_id_, request_options: {})
          #
          # @param object_id_ [String] The ID of the blog post to retrieve the draft of.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BlogPost]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostGetDraftByIDParams
          def get_draft_by_id(object_id_, params = {})
            @client.request(
              method: :get,
              path: ["cms/v3/blogs/posts/%1$s/draft", object_id_],
              model: HubspotSDK::Cms::Blogs::BlogPost,
              options: params[:request_options]
            )
          end

          # Retrieve a previous version of a blog post.
          #
          # @overload get_previous_version(revision_id, object_id_:, request_options: {})
          #
          # @param revision_id [String] The ID of the version to retrieve.
          #
          # @param object_id_ [String] The ID of the blog post.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::VersionBlogPost]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostGetPreviousVersionParams
          def get_previous_version(revision_id, params)
            parsed, options = HubspotSDK::Cms::Blogs::PostGetPreviousVersionParams.dump_request(params)
            object_id_ =
              parsed.delete(:object_id_) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["cms/v3/blogs/posts/%1$s/revisions/%2$s", object_id_, revision_id],
              model: HubspotSDK::Cms::Blogs::VersionBlogPost,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::PostGetPreviousVersionsParams} for more
          # details.
          #
          # Retrieve all the previous versions of a blog post.
          #
          # @overload get_previous_versions(object_id_, after: nil, before: nil, limit: nil, request_options: {})
          #
          # @param object_id_ [String] The ID of the blog post to retrieve previous versions of.
          #
          # @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          # @param before [String]
          #
          # @param limit [Integer] The maximum number of results to return. Default is 100.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::Blogs::VersionBlogPost>]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostGetPreviousVersionsParams
          def get_previous_versions(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Blogs::PostGetPreviousVersionsParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["cms/v3/blogs/posts/%1$s/revisions", object_id_],
              query: parsed,
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Cms::Blogs::VersionBlogPost,
              options: options
            )
          end

          # Publish the draft version of the blog post, sending its content to the live
          # page.
          #
          # @overload push_live(object_id_, request_options: {})
          #
          # @param object_id_ [String] The ID of the post to publish.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostPushLiveParams
          def push_live(object_id_, params = {})
            @client.request(
              method: :post,
              path: ["cms/v3/blogs/posts/%1$s/draft/push-live", object_id_],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Discard all drafted content, resetting the draft to contain the content in the
          # currently published version.
          #
          # @overload reset_draft(object_id_, request_options: {})
          #
          # @param object_id_ [String] The ID of the blog post to reset.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostResetDraftParams
          def reset_draft(object_id_, params = {})
            @client.request(
              method: :post,
              path: ["cms/v3/blogs/posts/%1$s/draft/reset", object_id_],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Restores a blog post to one of its previous versions.
          #
          # @overload restore_previous_version(revision_id, object_id_:, request_options: {})
          #
          # @param revision_id [String] The ID of the version to restore the blog post to.
          #
          # @param object_id_ [String] The ID of the blog post.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BlogPost]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostRestorePreviousVersionParams
          def restore_previous_version(revision_id, params)
            parsed, options = HubspotSDK::Cms::Blogs::PostRestorePreviousVersionParams.dump_request(params)
            object_id_ =
              parsed.delete(:object_id_) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["cms/v3/blogs/posts/%1$s/revisions/%2$s/restore", object_id_, revision_id],
              model: HubspotSDK::Cms::Blogs::BlogPost,
              options: options
            )
          end

          # Takes a specified version of a blog post, sets it as the new draft version of
          # the blog post.
          #
          # @overload restore_previous_version_to_draft(revision_id, object_id_:, request_options: {})
          #
          # @param revision_id [Integer] The ID of the version to restore the blog post to.
          #
          # @param object_id_ [String] The ID of the blog post.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BlogPost]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostRestorePreviousVersionToDraftParams
          def restore_previous_version_to_draft(revision_id, params)
            parsed, options = HubspotSDK::Cms::Blogs::PostRestorePreviousVersionToDraftParams.dump_request(params)
            object_id_ =
              parsed.delete(:object_id_) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["cms/v3/blogs/posts/%1$s/revisions/%2$s/restore-to-draft", object_id_, revision_id],
              model: HubspotSDK::Cms::Blogs::BlogPost,
              options: options
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostScheduleParams
          def schedule(params)
            parsed, options = HubspotSDK::Cms::Blogs::PostScheduleParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/posts/schedule",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Set the primary language of a
          # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content)
          # to the language of the provided post (specified as an ID in the request body)
          #
          # @overload set_lang_primary(id:, request_options: {})
          #
          # @param id [String] ID of object to set as primary in multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostSetLangPrimaryParams
          def set_lang_primary(params)
            parsed, options = HubspotSDK::Cms::Blogs::PostSetLangPrimaryParams.dump_request(params)
            @client.request(
              method: :put,
              path: "cms/v3/blogs/posts/multi-language/set-new-lang-primary",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::PostUpdateDraftParams} for more details.
          #
          # Partially updates the draft version of a single blog post by ID. You only need
          # to specify the values that you want to update.
          #
          # @overload update_draft(object_id_, id:, ab_status:, ab_test_id:, archived_at:, archived_in_dashboard:, attached_stylesheets:, author_name:, blog_author_id:, campaign:, category_id:, content_group_id:, content_type_category:, created:, created_by_id:, currently_published:, current_state:, domain:, dynamic_page_data_source_id:, dynamic_page_data_source_type:, dynamic_page_hub_db_table_id:, enable_domain_stylesheets:, enable_google_amp_output_override:, enable_layout_stylesheets:, featured_image:, featured_image_alt_text:, folder_id:, footer_html:, head_html:, html_title:, include_default_custom_css:, language:, layout_sections:, link_rel_canonical_url:, mab_experiment_id:, meta_description:, name:, page_expiry_date:, page_expiry_enabled:, page_expiry_redirect_id:, page_expiry_redirect_url:, password:, post_body:, post_summary:, public_access_rules:, public_access_rules_enabled:, publish_date:, publish_immediately:, rss_body:, rss_summary:, slug:, state:, tag_ids:, theme_settings_values:, translated_from_id:, translations:, updated:, updated_by_id:, url:, use_featured_image:, widget_containers:, widgets:, request_options: {})
          #
          # @param object_id_ [String] The ID of the blog post to update the draft of.
          #
          # @param id [String] The unique ID of the blog post.
          #
          # @param ab_status [Symbol, HubspotSDK::Models::Cms::Blogs::BlogPost::AbStatus]
          #
          # @param ab_test_id [String]
          #
          # @param archived_at [Integer] The timestamp (ISO8601 format) when this Blog Post was deleted.
          #
          # @param archived_in_dashboard [Boolean] If True, the post will not show up in your dashboard, although the post could st
          #
          # @param attached_stylesheets [Array<Hash{Symbol=>Object}>] List of stylesheets to attach to this blog post. These stylesheets are attached
          #
          # @param author_name [String] The name of the blog author associated with the post.
          #
          # @param blog_author_id [String] The ID of the blog author associated with this post.
          #
          # @param campaign [String] The GUID of the marketing campaign the post is associated with.
          #
          # @param category_id [Integer] ID of the object type.
          #
          # @param content_group_id [String] The ID of the post's parent blog.
          #
          # @param content_type_category [Symbol, HubspotSDK::Models::Cms::Blogs::BlogPost::ContentTypeCategory] An ENUM descibing the type of this object. Should always be BLOG_POST.
          #
          # @param created [Time]
          #
          # @param created_by_id [String] The ID of the user that created the post.
          #
          # @param currently_published [Boolean]
          #
          # @param current_state [Symbol, HubspotSDK::Models::Cms::Blogs::BlogPost::CurrentState] A generated ENUM descibing the current state of this Blog Post. Should always ma
          #
          # @param domain [String] The domain that the post lives on. If null, the post will default to the domain
          #
          # @param dynamic_page_data_source_id [String]
          #
          # @param dynamic_page_data_source_type [Integer]
          #
          # @param dynamic_page_hub_db_table_id [String] For dynamic HubDB pages,
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
          # @param folder_id [String]
          #
          # @param footer_html [String] Custom HTML for embed codes, javascript that should be placed before the </body>
          #
          # @param head_html [String] Custom HTML for embed codes, javascript, etc. that goes in the <head> tag of the
          #
          # @param html_title [String] The HTML title of the post.
          #
          # @param include_default_custom_css [Boolean] Boolean to determine whether or not the Primary CSS Files should be applied.
          #
          # @param language [Symbol, HubspotSDK::Models::Cms::Blogs::BlogPost::Language] The explicitly defined ISO 639 language code of the post. If null, the post will
          #
          # @param layout_sections [Hash{Symbol=>HubspotSDK::Models::Cms::LayoutSection}]
          #
          # @param link_rel_canonical_url [String] Optional override to set the URL to be used in the rel=canonical link tag on the
          #
          # @param mab_experiment_id [String]
          #
          # @param meta_description [String] A description that goes in <meta> tag on the page.
          #
          # @param name [String] The internal name of the post.
          #
          # @param page_expiry_date [Integer]
          #
          # @param page_expiry_enabled [Boolean]
          #
          # @param page_expiry_redirect_id [Integer]
          #
          # @param page_expiry_redirect_url [String]
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
          # @param slug [String] The URL slug of the blog post. This field is appended to the domain to construct
          #
          # @param state [String] An enumeration describing the current publish state of the post.
          #
          # @param tag_ids [Array<Integer>] The IDs of the tags associated with this post.
          #
          # @param theme_settings_values [Hash{Symbol=>Object}]
          #
          # @param translated_from_id [String] ID of the primary blog post that this post was translated from.
          #
          # @param translations [Hash{Symbol=>HubspotSDK::Models::Cms::ContentLanguageVariation}]
          #
          # @param updated [Time]
          #
          # @param updated_by_id [String] The ID of the user that updated the post.
          #
          # @param url [String] A generated field representing the URL of this blog post.
          #
          # @param use_featured_image [Boolean] Boolean to determine if this post should use a featured image.
          #
          # @param widget_containers [Hash{Symbol=>Object}] A data structure containing the data for all the modules inside the containers f
          #
          # @param widgets [Hash{Symbol=>Object}] A data structure containing the data for all the modules for this page.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BlogPost]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostUpdateDraftParams
          def update_draft(object_id_, params)
            parsed, options = HubspotSDK::Cms::Blogs::PostUpdateDraftParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["cms/v3/blogs/posts/%1$s/draft", object_id_],
              body: parsed,
              model: HubspotSDK::Cms::Blogs::BlogPost,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::PostUpdateLangsParams} for more details.
          #
          # Explicitly set new languages for each post in a
          # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content).
          #
          # @overload update_langs(languages:, primary_id:, request_options: {})
          #
          # @param languages [Hash{Symbol=>String}] Map of object IDs to associated languages of object in the multi-language group.
          #
          # @param primary_id [String] ID of the primary object in the multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::PostUpdateLangsParams
          def update_langs(params)
            parsed, options = HubspotSDK::Cms::Blogs::PostUpdateLangsParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/posts/multi-language/update-languages",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
            @batch = HubspotSDK::Resources::Cms::Blogs::Posts::Batch.new(client: client)
          end
        end
      end
    end
  end
end
