# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Cms::Pages::BatchTest < HubSpotSDK::Test::ResourceTest
  def test_create_folders_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.batch.create_folders(
        inputs: [
          {
            id: "id",
            category: 0,
            created: "2019-12-27T18:11:19.117Z",
            deletedAt: "2019-12-27T18:11:19.117Z",
            name: "name",
            parentFolderId: 0,
            updated: "2019-12-27T18:11:19.117Z"
          }
        ]
      )

    assert_pattern do
      response => HubSpotSDK::Cms::BatchResponseContentFolder
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ContentFolder]),
        started_at: Time,
        status: HubSpotSDK::Cms::BatchResponseContentFolder::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_landing_pages_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.batch.create_landing_pages(
        inputs: [
          {
            id: "id",
            abStatus: :automated_loser_variant,
            abTestId: "abTestId",
            archivedAt: "2019-12-27T18:11:19.117Z",
            archivedInDashboard: true,
            attachedStylesheets: [{foo: {}}],
            authorName: "authorName",
            campaign: "campaign",
            categoryId: 0,
            contentGroupId: "contentGroupId",
            contentTypeCategory: :"0",
            created: "2019-12-27T18:11:19.117Z",
            createdById: "createdById",
            currentlyPublished: true,
            currentState: :AGENT_GENERATED,
            domain: "domain",
            dynamicPageDataSourceId: "dynamicPageDataSourceId",
            dynamicPageDataSourceType: 0,
            dynamicPageHubDbTableId: "dynamicPageHubDbTableId",
            enableDomainStylesheets: true,
            enableLayoutStylesheets: true,
            featuredImage: "featuredImage",
            featuredImageAltText: "featuredImageAltText",
            folderId: "folderId",
            footerHtml: "footerHtml",
            headHtml: "headHtml",
            htmlTitle: "htmlTitle",
            includeDefaultCustomCss: true,
            language: :aa,
            layoutSections: {
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
                        angle: {units: :deg, value: 0},
                        colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                        sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
                      },
                      backgroundImage: {
                        backgroundPosition: "backgroundPosition",
                        backgroundSize: "backgroundSize",
                        imageUrl: "imageUrl"
                      },
                      flexboxPositioning: :BOTTOM_CENTER,
                      forceFullWidthSection: true,
                      maxWidthSectionCentering: 0,
                      verticalAlignment: :BOTTOM
                    }
                  }
                ],
                rows: [{}],
                styles: {
                  backgroundColor: {a: 0, b: 0, g: 0, r: 0},
                  backgroundGradient: {
                    angle: {units: :deg, value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: :BOTTOM_CENTER,
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: :BOTTOM
                },
                type: "type",
                w: 0,
                x: 0
              }
            },
            linkRelCanonicalUrl: "linkRelCanonicalUrl",
            mabExperimentId: "mabExperimentId",
            metaDescription: "metaDescription",
            name: "name",
            pageExpiryDate: 0,
            pageExpiryEnabled: true,
            pageExpiryRedirectId: 0,
            pageExpiryRedirectUrl: "pageExpiryRedirectUrl",
            pageRedirected: true,
            password: "password",
            publicAccessRules: [{}],
            publicAccessRulesEnabled: true,
            publishDate: "2019-12-27T18:11:19.117Z",
            publishImmediately: true,
            slug: "slug",
            state: "state",
            subcategory: "subcategory",
            templatePath: "templatePath",
            themeSettingsValues: {foo: {}},
            translatedFromId: "translatedFromId",
            translations: {
              foo: {
                id: 0,
                archivedInDashboard: true,
                authorName: "authorName",
                campaign: "campaign",
                campaignName: "campaignName",
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
            updatedById: "updatedById",
            url: "url",
            useFeaturedImage: true,
            widgetContainers: {foo: {}},
            widgets: {foo: {}}
          }
        ]
      )

    assert_pattern do
      response => HubSpotSDK::Cms::BatchResponsePage
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::PageData]),
        started_at: Time,
        status: HubSpotSDK::Cms::BatchResponsePage::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_site_pages_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.batch.create_site_pages(
        inputs: [
          {
            id: "id",
            abStatus: :automated_loser_variant,
            abTestId: "abTestId",
            archivedAt: "2019-12-27T18:11:19.117Z",
            archivedInDashboard: true,
            attachedStylesheets: [{foo: {}}],
            authorName: "authorName",
            campaign: "campaign",
            categoryId: 0,
            contentGroupId: "contentGroupId",
            contentTypeCategory: :"0",
            created: "2019-12-27T18:11:19.117Z",
            createdById: "createdById",
            currentlyPublished: true,
            currentState: :AGENT_GENERATED,
            domain: "domain",
            dynamicPageDataSourceId: "dynamicPageDataSourceId",
            dynamicPageDataSourceType: 0,
            dynamicPageHubDbTableId: "dynamicPageHubDbTableId",
            enableDomainStylesheets: true,
            enableLayoutStylesheets: true,
            featuredImage: "featuredImage",
            featuredImageAltText: "featuredImageAltText",
            folderId: "folderId",
            footerHtml: "footerHtml",
            headHtml: "headHtml",
            htmlTitle: "htmlTitle",
            includeDefaultCustomCss: true,
            language: :aa,
            layoutSections: {
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
                        angle: {units: :deg, value: 0},
                        colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                        sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
                      },
                      backgroundImage: {
                        backgroundPosition: "backgroundPosition",
                        backgroundSize: "backgroundSize",
                        imageUrl: "imageUrl"
                      },
                      flexboxPositioning: :BOTTOM_CENTER,
                      forceFullWidthSection: true,
                      maxWidthSectionCentering: 0,
                      verticalAlignment: :BOTTOM
                    }
                  }
                ],
                rows: [{}],
                styles: {
                  backgroundColor: {a: 0, b: 0, g: 0, r: 0},
                  backgroundGradient: {
                    angle: {units: :deg, value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: :BOTTOM_CENTER,
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: :BOTTOM
                },
                type: "type",
                w: 0,
                x: 0
              }
            },
            linkRelCanonicalUrl: "linkRelCanonicalUrl",
            mabExperimentId: "mabExperimentId",
            metaDescription: "metaDescription",
            name: "name",
            pageExpiryDate: 0,
            pageExpiryEnabled: true,
            pageExpiryRedirectId: 0,
            pageExpiryRedirectUrl: "pageExpiryRedirectUrl",
            pageRedirected: true,
            password: "password",
            publicAccessRules: [{}],
            publicAccessRulesEnabled: true,
            publishDate: "2019-12-27T18:11:19.117Z",
            publishImmediately: true,
            slug: "slug",
            state: "state",
            subcategory: "subcategory",
            templatePath: "templatePath",
            themeSettingsValues: {foo: {}},
            translatedFromId: "translatedFromId",
            translations: {
              foo: {
                id: 0,
                archivedInDashboard: true,
                authorName: "authorName",
                campaign: "campaign",
                campaignName: "campaignName",
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
            updatedById: "updatedById",
            url: "url",
            useFeaturedImage: true,
            widgetContainers: {foo: {}},
            widgets: {foo: {}}
          }
        ]
      )

    assert_pattern do
      response => HubSpotSDK::Cms::BatchResponsePage
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::PageData]),
        started_at: Time,
        status: HubSpotSDK::Cms::BatchResponsePage::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_delete_folders_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.batch.delete_folders(inputs: ["string"])

    assert_pattern do
      response => nil
    end
  end

  def test_delete_landing_pages_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.batch.delete_landing_pages(inputs: ["string"])

    assert_pattern do
      response => nil
    end
  end

  def test_delete_site_pages_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.batch.delete_site_pages(inputs: ["string"])

    assert_pattern do
      response => nil
    end
  end

  def test_get_landing_pages_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.batch.get_landing_pages(inputs: ["string"])

    assert_pattern do
      response => HubSpotSDK::Cms::BatchResponsePage
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::PageData]),
        started_at: Time,
        status: HubSpotSDK::Cms::BatchResponsePage::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_site_pages_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.batch.get_site_pages(inputs: ["string"])

    assert_pattern do
      response => HubSpotSDK::Cms::BatchResponsePage
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::PageData]),
        started_at: Time,
        status: HubSpotSDK::Cms::BatchResponsePage::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_folders_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.batch.update_folders(inputs: [{}])

    assert_pattern do
      response => HubSpotSDK::Cms::BatchResponseContentFolder
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ContentFolder]),
        started_at: Time,
        status: HubSpotSDK::Cms::BatchResponseContentFolder::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_landing_pages_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.batch.update_landing_pages(inputs: [{}])

    assert_pattern do
      response => HubSpotSDK::Cms::BatchResponsePage
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::PageData]),
        started_at: Time,
        status: HubSpotSDK::Cms::BatchResponsePage::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_site_pages_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.batch.update_site_pages(inputs: [{}])

    assert_pattern do
      response => HubSpotSDK::Cms::BatchResponsePage
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::PageData]),
        started_at: Time,
        status: HubSpotSDK::Cms::BatchResponsePage::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end
end
