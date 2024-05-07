import 'package:blog_application/data/models/model.dart';

abstract class IBlogRepository {
  Future deleteBlog(String? id);

  Future<BlogModel> createBlog(Map<String, dynamic> createBlogPayload);

  Future<BlogModel> getBlog(String? id);

  Future<List<BlogModel>> getAllBlogs();

  Future<BlogModel> updateBlog(Map<String, dynamic> model);
}