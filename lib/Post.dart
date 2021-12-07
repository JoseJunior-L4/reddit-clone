class Post {
  final String subreddit,
      user,
      date_posted,
      user_icon,
      post_image,
      title,
      description;
  final int votes;

  Post({
    required this.subreddit,
    required this.user,
    required this.date_posted,
    required this.user_icon,
    required this.post_image,
    required this.votes,
    required this.title,
    required this.description,
  });
}
