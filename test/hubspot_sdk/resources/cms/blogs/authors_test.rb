# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Blogs::AuthorsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.authors.create(
        id: "id",
        avatar: "avatar",
        bio: "bio",
        created: "2019-12-27T18:11:19.117Z",
        deleted_at: "2019-12-27T18:11:19.117Z",
        display_name: "displayName",
        email: "email",
        facebook: "facebook",
        full_name: "fullName",
        language: :af,
        linkedin: "linkedin",
        name: "name",
        slug: "slug",
        translated_from_id: 0,
        twitter: "twitter",
        updated: "2019-12-27T18:11:19.117Z",
        website: "website"
      )

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BlogAuthor
    end

    assert_pattern do
      response => {
        id: String,
        avatar: String,
        bio: String,
        created: Time,
        deleted_at: Time,
        display_name: String,
        email: String,
        facebook: String,
        full_name: String,
        language: HubspotSDK::Cms::Blogs::BlogAuthor::Language,
        linkedin: String,
        name: String,
        slug: String,
        translated_from_id: Integer,
        twitter: String,
        updated: Time,
        website: String
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.authors.update(
        "objectId",
        id: "id",
        avatar: "avatar",
        bio: "bio",
        created: "2019-12-27T18:11:19.117Z",
        deleted_at: "2019-12-27T18:11:19.117Z",
        display_name: "displayName",
        email: "email",
        facebook: "facebook",
        full_name: "fullName",
        language: :af,
        linkedin: "linkedin",
        name: "name",
        slug: "slug",
        translated_from_id: 0,
        twitter: "twitter",
        updated: "2019-12-27T18:11:19.117Z",
        website: "website"
      )

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BlogAuthor
    end

    assert_pattern do
      response => {
        id: String,
        avatar: String,
        bio: String,
        created: Time,
        deleted_at: Time,
        display_name: String,
        email: String,
        facebook: String,
        full_name: String,
        language: HubspotSDK::Cms::Blogs::BlogAuthor::Language,
        linkedin: String,
        name: String,
        slug: String,
        translated_from_id: Integer,
        twitter: String,
        updated: Time,
        website: String
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.authors.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Cms::Blogs::BlogAuthor
    end

    assert_pattern do
      row => {
        id: String,
        avatar: String,
        bio: String,
        created: Time,
        deleted_at: Time,
        display_name: String,
        email: String,
        facebook: String,
        full_name: String,
        language: HubspotSDK::Cms::Blogs::BlogAuthor::Language,
        linkedin: String,
        name: String,
        slug: String,
        translated_from_id: Integer,
        twitter: String,
        updated: Time,
        website: String
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.authors.delete("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_attach_to_lang_group_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.authors.attach_to_lang_group(id: "id", language: "language", primary_id: "primaryId")

    assert_pattern do
      response => nil
    end
  end

  def test_create_batch_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.authors.create_batch(
        inputs: [
          {
            id: "id",
            avatar: "avatar",
            bio: "bio",
            created: "2019-12-27T18:11:19.117Z",
            deletedAt: "2019-12-27T18:11:19.117Z",
            displayName: "displayName",
            email: "email",
            facebook: "facebook",
            fullName: "fullName",
            language: :af,
            linkedin: "linkedin",
            name: "name",
            slug: "slug",
            translatedFromId: 0,
            twitter: "twitter",
            updated: "2019-12-27T18:11:19.117Z",
            website: "website"
          }
        ]
      )

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::BlogAuthor]),
        started_at: Time,
        status: HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_language_variation_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.authors.create_language_variation(
        id: "id",
        blog_author: {
          id: "id",
          avatar: "avatar",
          bio: "bio",
          created: "2019-12-27T18:11:19.117Z",
          deletedAt: "2019-12-27T18:11:19.117Z",
          displayName: "displayName",
          email: "email",
          facebook: "facebook",
          fullName: "fullName",
          language: :af,
          linkedin: "linkedin",
          name: "name",
          slug: "slug",
          translatedFromId: 0,
          twitter: "twitter",
          updated: "2019-12-27T18:11:19.117Z",
          website: "website"
        }
      )

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BlogAuthor
    end

    assert_pattern do
      response => {
        id: String,
        avatar: String,
        bio: String,
        created: Time,
        deleted_at: Time,
        display_name: String,
        email: String,
        facebook: String,
        full_name: String,
        language: HubspotSDK::Cms::Blogs::BlogAuthor::Language,
        linkedin: String,
        name: String,
        slug: String,
        translated_from_id: Integer,
        twitter: String,
        updated: Time,
        website: String
      }
    end
  end

  def test_delete_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.authors.delete_batch(inputs: ["string"])

    assert_pattern do
      response => nil
    end
  end

  def test_detach_from_lang_group_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.authors.detach_from_lang_group(id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.authors.get("objectId")

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BlogAuthor
    end

    assert_pattern do
      response => {
        id: String,
        avatar: String,
        bio: String,
        created: Time,
        deleted_at: Time,
        display_name: String,
        email: String,
        facebook: String,
        full_name: String,
        language: HubspotSDK::Cms::Blogs::BlogAuthor::Language,
        linkedin: String,
        name: String,
        slug: String,
        translated_from_id: Integer,
        twitter: String,
        updated: Time,
        website: String
      }
    end
  end

  def test_get_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.authors.get_batch(inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::BlogAuthor]),
        started_at: Time,
        status: HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_set_new_lang_primary_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.authors.set_new_lang_primary(id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_update_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.authors.update_batch(inputs: [{}])

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::BlogAuthor]),
        started_at: Time,
        status: HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_languages_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.authors.update_languages(languages: {foo: "string"}, primary_id: "primaryId")

    assert_pattern do
      response => nil
    end
  end
end
