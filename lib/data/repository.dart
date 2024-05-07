import 'package:blog_application/data/adapters/repository_adapters.dart';
import 'package:blog_application/data/models/model.dart';
import 'package:blog_application/data/networking/api_services.dart';
import 'package:flutter/material.dart';

class BlogRepository extends IBlogRepository {
  final ApiService apiService;
  final BlogModel blogModel;
  BlogRepository({required this.apiService, required this.blogModel});

  @override
  Future<BlogModel> createBlog(Map<String, dynamic> createBlogPayload) async {
    return await apiService.postData(
      query: """
         mutation createBlogPost(\$title: String!, \$subTitle: String!, \$body: String!) {
            createBlog(title: \$title, subTitle: \$subTitle, body: \$body) {
                success
                blogPost {
                  id
                  title
                  subTitle
                  body
                  dateCreated
                }
              }
            }
""",
      param: {
        "body": blogModel.body,
        "title": blogModel.title,
        "subTitle": blogModel.subTitle,
      },
      response: (response) {
        final blog = BlogModel.fromJson(response);
        return blog;
      },
    );
  }

  @override
  // ignore: avoid_renaming_method_parameters
  Future deleteBlog(String? blogId) async {
    return await apiService.deleteData(
      param: {
        "blogId": blogId,
      },
      query: """
      mutation deleteBlogPost(\$blogId: String!) {
                deleteBlog(blogId: \$blogId) {
                    success
                }
            }
      """,
      response: (response) {},
    );
  }

  @override
  Future<List<BlogModel>> getAllBlogs() async {
    return await apiService.getData(
      query: """
    query fetchAllBlogs {
        allBlogPosts {
          id
          title
          subTitle
          body
          dateCreated
        }
      }
    """,
      response: (response) {
        debugPrint("get posts $response");
        final articles = response["allBlogPosts"] as List;
        List<BlogModel> blogs = [];
        for (var i in articles) {
          final model = BlogModel.fromJson(i);
          blogs.add(model);
        }
        return blogs;
      },
    );
  }

  @override
  // ignore: avoid_renaming_method_parameters
  Future<BlogModel> getBlog(String? blogId) async {
    return await apiService.getData(
      query: """
      query getBlog(\$blogId: String!) {
       blogPost(blogId: \$blogId) {
        id
        title
        subTitle
        body
        dateCreated
      }
    }
      """,
      response: (response) {
        return BlogModel.fromJson(response);
      },
    );
  }

  @override
  Future<BlogModel> updateBlog(Map<String, dynamic> updateBlogPayload) async {
    return await apiService.updateData(
      query: """
        mutation updateBlogPost(\$blogId: String!, \$title: String!, \$subTitle: String!, \$body: String!) {
                    updateBlog(blogId: \$blogId, title: \$title, subTitle: \$subTitle, body: \$body) {
                        success
                        blogPost {
                          id
                          title
                          subTitle
                          body
                          dateCreated
                        }
                      }
                    }
        """,
      param: {
        "blogId": blogModel.id,
        "body": blogModel.body,
        "title": blogModel.title,
        "subTitle": blogModel.subTitle,
      },
      response: (response) {
        debugPrint("update response $response");
        final blog = BlogModel.fromJson(response);
        return blog;
      },
    );
  }
}
