# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Blogs::PostsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.posts.create(
        id: "id",
        ab_status: :master,
        ab_test_id: "abTestId",
        archived_at: 0,
        archived_in_dashboard: true,
        attached_stylesheets: [{foo: {}}],
        author_name: "authorName",
        blog_author_id: "blogAuthorId",
        campaign: "campaign",
        category_id: 0,
        content_group_id: "contentGroupId",
        content_type_category: :"0",
        created: "2019-12-27T18:11:19.117Z",
        created_by_id: "createdById",
        currently_published: true,
        current_state: :AUTOMATED,
        domain: "domain",
        dynamic_page_data_source_id: "dynamicPageDataSourceId",
        dynamic_page_data_source_type: 0,
        dynamic_page_hub_db_table_id: "dynamicPageHubDbTableId",
        enable_domain_stylesheets: true,
        enable_google_amp_output_override: true,
        enable_layout_stylesheets: true,
        featured_image: "featuredImage",
        featured_image_alt_text: "featuredImageAltText",
        folder_id: "folderId",
        footer_html: "footerHtml",
        head_html: "headHtml",
        html_title: "htmlTitle",
        include_default_custom_css: true,
        language: :af,
        layout_sections: {
          foo: {
            cells: [],
            cssClass: "cssClass",
            cssId: "cssId",
            cssStyle: "cssStyle",
            label: "label",
            name: "name",
            params: {foo: {}},
            rowMetaData: [
              {
                cssClass: "cssClass",
                styles: {
                  backgroundColor: {a: 0, b: 0, g: 0, r: 0},
                  backgroundGradient: {
                    angle: {units: "units", value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: "flexboxPositioning",
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: "verticalAlignment"
                }
              }
            ],
            rows: [{}],
            styles: {
              backgroundColor: {a: 0, b: 0, g: 0, r: 0},
              backgroundGradient: {
                angle: {units: "units", value: 0},
                colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
              },
              backgroundImage: {
                backgroundPosition: "backgroundPosition",
                backgroundSize: "backgroundSize",
                imageUrl: "imageUrl"
              },
              flexboxPositioning: "flexboxPositioning",
              forceFullWidthSection: true,
              maxWidthSectionCentering: 0,
              verticalAlignment: "verticalAlignment"
            },
            type: "type",
            w: 0,
            x: 0
          }
        },
        link_rel_canonical_url: "linkRelCanonicalUrl",
        mab_experiment_id: "mabExperimentId",
        meta_description: "metaDescription",
        name: "name",
        page_expiry_date: 0,
        page_expiry_enabled: true,
        page_expiry_redirect_id: 0,
        page_expiry_redirect_url: "pageExpiryRedirectUrl",
        password: "password",
        post_body: "postBody",
        post_summary: "postSummary",
        public_access_rules: [{}],
        public_access_rules_enabled: true,
        publish_date: "2019-12-27T18:11:19.117Z",
        publish_immediately: true,
        rss_body: "rssBody",
        rss_summary: "rssSummary",
        slug: "slug",
        state: "state",
        tag_ids: [0],
        theme_settings_values: {foo: {}},
        translated_from_id: "translatedFromId",
        translations: {
          foo: {
            id: 0,
            archivedInDashboard: true,
            authorName: "authorName",
            campaign: "campaign",
            created: "2019-12-27T18:11:19.117Z",
            name: "name",
            password: "password",
            publicAccessRules: [{}],
            publicAccessRulesEnabled: true,
            publishDate: "2019-12-27T18:11:19.117Z",
            slug: "slug",
            state: "state",
            updated: "2019-12-27T18:11:19.117Z"
          }
        },
        updated: "2019-12-27T18:11:19.117Z",
        updated_by_id: "updatedById",
        url: "url",
        use_featured_image: true,
        widget_containers: {foo: {}},
        widgets: {foo: {}}
      )

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BlogPost
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Blogs::BlogPost::AbStatus,
        ab_test_id: String,
        archived_at: Integer,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        blog_author_id: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Blogs::BlogPost::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Blogs::BlogPost::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_google_amp_output_override: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Blogs::BlogPost::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        password: String,
        post_body: String,
        post_summary: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        rss_body: String,
        rss_summary: String,
        slug: String,
        state: String,
        tag_ids: ^(HubspotSDK::Internal::Type::ArrayOf[Integer]),
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::PagesContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.posts.update(
        "objectId",
        id: "id",
        ab_status: :master,
        ab_test_id: "abTestId",
        archived_at: 0,
        archived_in_dashboard: true,
        attached_stylesheets: [{foo: {}}],
        author_name: "authorName",
        blog_author_id: "blogAuthorId",
        campaign: "campaign",
        category_id: 0,
        content_group_id: "contentGroupId",
        content_type_category: :"0",
        created: "2019-12-27T18:11:19.117Z",
        created_by_id: "createdById",
        currently_published: true,
        current_state: :AUTOMATED,
        domain: "domain",
        dynamic_page_data_source_id: "dynamicPageDataSourceId",
        dynamic_page_data_source_type: 0,
        dynamic_page_hub_db_table_id: "dynamicPageHubDbTableId",
        enable_domain_stylesheets: true,
        enable_google_amp_output_override: true,
        enable_layout_stylesheets: true,
        featured_image: "featuredImage",
        featured_image_alt_text: "featuredImageAltText",
        folder_id: "folderId",
        footer_html: "footerHtml",
        head_html: "headHtml",
        html_title: "htmlTitle",
        include_default_custom_css: true,
        language: :af,
        layout_sections: {
          foo: {
            cells: [],
            cssClass: "cssClass",
            cssId: "cssId",
            cssStyle: "cssStyle",
            label: "label",
            name: "name",
            params: {foo: {}},
            rowMetaData: [
              {
                cssClass: "cssClass",
                styles: {
                  backgroundColor: {a: 0, b: 0, g: 0, r: 0},
                  backgroundGradient: {
                    angle: {units: "units", value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: "flexboxPositioning",
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: "verticalAlignment"
                }
              }
            ],
            rows: [{}],
            styles: {
              backgroundColor: {a: 0, b: 0, g: 0, r: 0},
              backgroundGradient: {
                angle: {units: "units", value: 0},
                colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
              },
              backgroundImage: {
                backgroundPosition: "backgroundPosition",
                backgroundSize: "backgroundSize",
                imageUrl: "imageUrl"
              },
              flexboxPositioning: "flexboxPositioning",
              forceFullWidthSection: true,
              maxWidthSectionCentering: 0,
              verticalAlignment: "verticalAlignment"
            },
            type: "type",
            w: 0,
            x: 0
          }
        },
        link_rel_canonical_url: "linkRelCanonicalUrl",
        mab_experiment_id: "mabExperimentId",
        meta_description: "metaDescription",
        name: "name",
        page_expiry_date: 0,
        page_expiry_enabled: true,
        page_expiry_redirect_id: 0,
        page_expiry_redirect_url: "pageExpiryRedirectUrl",
        password: "password",
        post_body: "postBody",
        post_summary: "postSummary",
        public_access_rules: [{}],
        public_access_rules_enabled: true,
        publish_date: "2019-12-27T18:11:19.117Z",
        publish_immediately: true,
        rss_body: "rssBody",
        rss_summary: "rssSummary",
        slug: "slug",
        state: "state",
        tag_ids: [0],
        theme_settings_values: {foo: {}},
        translated_from_id: "translatedFromId",
        translations: {
          foo: {
            id: 0,
            archivedInDashboard: true,
            authorName: "authorName",
            campaign: "campaign",
            created: "2019-12-27T18:11:19.117Z",
            name: "name",
            password: "password",
            publicAccessRules: [{}],
            publicAccessRulesEnabled: true,
            publishDate: "2019-12-27T18:11:19.117Z",
            slug: "slug",
            state: "state",
            updated: "2019-12-27T18:11:19.117Z"
          }
        },
        updated: "2019-12-27T18:11:19.117Z",
        updated_by_id: "updatedById",
        url: "url",
        use_featured_image: true,
        widget_containers: {foo: {}},
        widgets: {foo: {}}
      )

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BlogPost
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Blogs::BlogPost::AbStatus,
        ab_test_id: String,
        archived_at: Integer,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        blog_author_id: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Blogs::BlogPost::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Blogs::BlogPost::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_google_amp_output_override: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Blogs::BlogPost::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        password: String,
        post_body: String,
        post_summary: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        rss_body: String,
        rss_summary: String,
        slug: String,
        state: String,
        tag_ids: ^(HubspotSDK::Internal::Type::ArrayOf[Integer]),
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::PagesContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Cms::Blogs::BlogPost
    end

    assert_pattern do
      row => {
        id: String,
        ab_status: HubspotSDK::Cms::Blogs::BlogPost::AbStatus,
        ab_test_id: String,
        archived_at: Integer,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        blog_author_id: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Blogs::BlogPost::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Blogs::BlogPost::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_google_amp_output_override: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Blogs::BlogPost::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        password: String,
        post_body: String,
        post_summary: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        rss_body: String,
        rss_summary: String,
        slug: String,
        state: String,
        tag_ids: ^(HubspotSDK::Internal::Type::ArrayOf[Integer]),
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::PagesContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.delete("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_attach_to_lang_group_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.posts.attach_to_lang_group(id: "id", language: "language", primary_id: "primaryId")

    assert_pattern do
      response => nil
    end
  end

  def test_clone__required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.clone_(id: "id")

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BlogPost
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Blogs::BlogPost::AbStatus,
        ab_test_id: String,
        archived_at: Integer,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        blog_author_id: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Blogs::BlogPost::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Blogs::BlogPost::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_google_amp_output_override: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Blogs::BlogPost::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        password: String,
        post_body: String,
        post_summary: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        rss_body: String,
        rss_summary: String,
        slug: String,
        state: String,
        tag_ids: ^(HubspotSDK::Internal::Type::ArrayOf[Integer]),
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::PagesContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_create_lang_variation_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.create_lang_variation(id: "id")

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BlogPost
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Blogs::BlogPost::AbStatus,
        ab_test_id: String,
        archived_at: Integer,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        blog_author_id: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Blogs::BlogPost::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Blogs::BlogPost::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_google_amp_output_override: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Blogs::BlogPost::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        password: String,
        post_body: String,
        post_summary: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        rss_body: String,
        rss_summary: String,
        slug: String,
        state: String,
        tag_ids: ^(HubspotSDK::Internal::Type::ArrayOf[Integer]),
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::PagesContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_detach_from_lang_group_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.detach_from_lang_group(id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.get("objectId")

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BlogPost
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Blogs::BlogPost::AbStatus,
        ab_test_id: String,
        archived_at: Integer,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        blog_author_id: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Blogs::BlogPost::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Blogs::BlogPost::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_google_amp_output_override: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Blogs::BlogPost::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        password: String,
        post_body: String,
        post_summary: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        rss_body: String,
        rss_summary: String,
        slug: String,
        state: String,
        tag_ids: ^(HubspotSDK::Internal::Type::ArrayOf[Integer]),
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::PagesContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_get_draft_by_id
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.get_draft_by_id("objectId")

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BlogPost
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Blogs::BlogPost::AbStatus,
        ab_test_id: String,
        archived_at: Integer,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        blog_author_id: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Blogs::BlogPost::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Blogs::BlogPost::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_google_amp_output_override: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Blogs::BlogPost::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        password: String,
        post_body: String,
        post_summary: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        rss_body: String,
        rss_summary: String,
        slug: String,
        state: String,
        tag_ids: ^(HubspotSDK::Internal::Type::ArrayOf[Integer]),
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::PagesContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_get_previous_version_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.get_previous_version("revisionId", object_id_: "objectId")

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::VersionBlogPost
    end

    assert_pattern do
      response => {
        id: String,
        object: HubspotSDK::Cms::Blogs::BlogPost,
        updated_at: Time,
        user: HubspotSDK::VersionUser
      }
    end
  end

  def test_get_previous_versions
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.get_previous_versions("objectId")

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Cms::Blogs::VersionBlogPost
    end

    assert_pattern do
      row => {
        id: String,
        object: HubspotSDK::Cms::Blogs::BlogPost,
        updated_at: Time,
        user: HubspotSDK::VersionUser
      }
    end
  end

  def test_push_live
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.push_live("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_reset_draft
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.reset_draft("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_restore_previous_version_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.restore_previous_version("revisionId", object_id_: "objectId")

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BlogPost
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Blogs::BlogPost::AbStatus,
        ab_test_id: String,
        archived_at: Integer,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        blog_author_id: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Blogs::BlogPost::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Blogs::BlogPost::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_google_amp_output_override: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Blogs::BlogPost::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        password: String,
        post_body: String,
        post_summary: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        rss_body: String,
        rss_summary: String,
        slug: String,
        state: String,
        tag_ids: ^(HubspotSDK::Internal::Type::ArrayOf[Integer]),
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::PagesContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_restore_previous_version_to_draft_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.restore_previous_version_to_draft(0, object_id_: "objectId")

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BlogPost
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Blogs::BlogPost::AbStatus,
        ab_test_id: String,
        archived_at: Integer,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        blog_author_id: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Blogs::BlogPost::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Blogs::BlogPost::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_google_amp_output_override: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Blogs::BlogPost::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        password: String,
        post_body: String,
        post_summary: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        rss_body: String,
        rss_summary: String,
        slug: String,
        state: String,
        tag_ids: ^(HubspotSDK::Internal::Type::ArrayOf[Integer]),
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::PagesContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_schedule_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.schedule(id: "id", publish_date: "2019-12-27T18:11:19.117Z")

    assert_pattern do
      response => nil
    end
  end

  def test_set_lang_primary_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.set_lang_primary(id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_update_draft_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.posts.update_draft(
        "objectId",
        id: "id",
        ab_status: :master,
        ab_test_id: "abTestId",
        archived_at: 0,
        archived_in_dashboard: true,
        attached_stylesheets: [{foo: {}}],
        author_name: "authorName",
        blog_author_id: "blogAuthorId",
        campaign: "campaign",
        category_id: 0,
        content_group_id: "contentGroupId",
        content_type_category: :"0",
        created: "2019-12-27T18:11:19.117Z",
        created_by_id: "createdById",
        currently_published: true,
        current_state: :AUTOMATED,
        domain: "domain",
        dynamic_page_data_source_id: "dynamicPageDataSourceId",
        dynamic_page_data_source_type: 0,
        dynamic_page_hub_db_table_id: "dynamicPageHubDbTableId",
        enable_domain_stylesheets: true,
        enable_google_amp_output_override: true,
        enable_layout_stylesheets: true,
        featured_image: "featuredImage",
        featured_image_alt_text: "featuredImageAltText",
        folder_id: "folderId",
        footer_html: "footerHtml",
        head_html: "headHtml",
        html_title: "htmlTitle",
        include_default_custom_css: true,
        language: :af,
        layout_sections: {
          foo: {
            cells: [],
            cssClass: "cssClass",
            cssId: "cssId",
            cssStyle: "cssStyle",
            label: "label",
            name: "name",
            params: {foo: {}},
            rowMetaData: [
              {
                cssClass: "cssClass",
                styles: {
                  backgroundColor: {a: 0, b: 0, g: 0, r: 0},
                  backgroundGradient: {
                    angle: {units: "units", value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: "flexboxPositioning",
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: "verticalAlignment"
                }
              }
            ],
            rows: [{}],
            styles: {
              backgroundColor: {a: 0, b: 0, g: 0, r: 0},
              backgroundGradient: {
                angle: {units: "units", value: 0},
                colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
              },
              backgroundImage: {
                backgroundPosition: "backgroundPosition",
                backgroundSize: "backgroundSize",
                imageUrl: "imageUrl"
              },
              flexboxPositioning: "flexboxPositioning",
              forceFullWidthSection: true,
              maxWidthSectionCentering: 0,
              verticalAlignment: "verticalAlignment"
            },
            type: "type",
            w: 0,
            x: 0
          }
        },
        link_rel_canonical_url: "linkRelCanonicalUrl",
        mab_experiment_id: "mabExperimentId",
        meta_description: "metaDescription",
        name: "name",
        page_expiry_date: 0,
        page_expiry_enabled: true,
        page_expiry_redirect_id: 0,
        page_expiry_redirect_url: "pageExpiryRedirectUrl",
        password: "password",
        post_body: "postBody",
        post_summary: "postSummary",
        public_access_rules: [{}],
        public_access_rules_enabled: true,
        publish_date: "2019-12-27T18:11:19.117Z",
        publish_immediately: true,
        rss_body: "rssBody",
        rss_summary: "rssSummary",
        slug: "slug",
        state: "state",
        tag_ids: [0],
        theme_settings_values: {foo: {}},
        translated_from_id: "translatedFromId",
        translations: {
          foo: {
            id: 0,
            archivedInDashboard: true,
            authorName: "authorName",
            campaign: "campaign",
            created: "2019-12-27T18:11:19.117Z",
            name: "name",
            password: "password",
            publicAccessRules: [{}],
            publicAccessRulesEnabled: true,
            publishDate: "2019-12-27T18:11:19.117Z",
            slug: "slug",
            state: "state",
            updated: "2019-12-27T18:11:19.117Z"
          }
        },
        updated: "2019-12-27T18:11:19.117Z",
        updated_by_id: "updatedById",
        url: "url",
        use_featured_image: true,
        widget_containers: {foo: {}},
        widgets: {foo: {}}
      )

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BlogPost
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Blogs::BlogPost::AbStatus,
        ab_test_id: String,
        archived_at: Integer,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        blog_author_id: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Blogs::BlogPost::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Blogs::BlogPost::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_google_amp_output_override: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Blogs::BlogPost::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        password: String,
        post_body: String,
        post_summary: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        rss_body: String,
        rss_summary: String,
        slug: String,
        state: String,
        tag_ids: ^(HubspotSDK::Internal::Type::ArrayOf[Integer]),
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::PagesContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_update_langs_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.update_langs(languages: {foo: "string"}, primary_id: "primaryId")

    assert_pattern do
      response => nil
    end
  end
end
