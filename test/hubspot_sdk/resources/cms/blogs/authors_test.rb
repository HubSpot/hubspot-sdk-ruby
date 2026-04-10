# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Cms::Blogs::AuthorsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

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
        language: :aa,
        linkedin: "linkedin",
        name: "name",
        slug: "slug",
        translated_from_id: 0,
        twitter: "twitter",
        updated: "2019-12-27T18:11:19.117Z",
        website: "website"
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

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
        language: :aa,
        linkedin: "linkedin",
        name: "name",
        slug: "slug",
        translated_from_id: 0,
        twitter: "twitter",
        updated: "2019-12-27T18:11:19.117Z",
        website: "website"
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.authors.list

    assert_pattern do
      response => StringIO
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.authors.delete("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_attach_to_lang_group_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.blogs.authors.attach_to_lang_group(id: "id", language: :aa, primary_id: "primaryId")

    assert_pattern do
      response => StringIO
    end
  end

  def test_create_language_variation_required_params
    skip("Mock server tests are disabled")

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
          language: :aa,
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
      response => StringIO
    end
  end

  def test_detach_from_lang_group_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.authors.detach_from_lang_group(id: "id")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.authors.get("objectId")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_cursor
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.authors.get_cursor

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_cursor_by_query
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.authors.get_cursor_by_query

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_posts_cursor
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.authors.get_posts_cursor

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_posts_cursor_by_query
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.authors.get_posts_cursor_by_query

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_tags_cursor
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.authors.get_tags_cursor

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_tags_cursor_by_query
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.authors.get_tags_cursor_by_query

    assert_pattern do
      response => StringIO
    end
  end

  def test_set_new_lang_primary_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.authors.set_new_lang_primary(id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_update_languages_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.authors.update_languages(languages: {foo: :aa}, primary_id: "primaryId")

    assert_pattern do
      response => StringIO
    end
  end
end
