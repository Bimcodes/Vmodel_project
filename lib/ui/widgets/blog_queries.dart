
class BlogQueries {
  static String getAllBlogPosts = """
  query GetAllBlogPosts {
    allBlogPosts {
      id
      title
      subTitle
      body
      dateCreated
    }
  }
""";

  static String getBlogPostById = """
  query GetAllBlogPostById(\$id: String!) {
    blogPost(id: \$id) {
      id
      title
      subTitle
      body
      dateCreated
    }
  }
""";

  static String updateBlogPost = """
  mutation updateBlog(\$blogId: String!, \$title: String!, \$subTitle: String!, \$body: String! ) {
    blogPost(id: \$blogId, title: \$title, subTitle: \$subTitle, body: \$body) {
      id
      title
      subTitle
      body
      dateCreated
    }
  }
""";

  static String deleteBlogPost = """
  mutation deleteBlog(\$id: String!) {
    deleteBlog(id: \$id) {
      id
      
    }
  }
""";


}
