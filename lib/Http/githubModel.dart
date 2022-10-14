class GithubModel {
  String name;
  String avatar_url;
  String html_url;
  String company;
  String bio;
  int public_repos;
  int followers;
  int following;
  GithubModel({
    required this.name,
    required this.avatar_url,
    required this.html_url,
    required this.company,
    required this.bio,
    required this.public_repos,
    required this.followers,
    required this.following
  });

  factory GithubModel.fromJson(Map<String,dynamic>jsonData){
    String name = jsonData['name'] as String;
    String avatar_url = jsonData['avatar_url'] as String;
    String html_url = jsonData['html_url'] as String;
    String company = jsonData['company']as String;
    String bio = jsonData['bio']as String;
    int public_repos = jsonData['public_repos']as int;
    int followers = jsonData['followers']as int;
    int following = jsonData['following']as int;
    return GithubModel(name: name, avatar_url: avatar_url, html_url: html_url, company: company, bio: bio, public_repos: public_repos, followers: followers, following: following);
  }
}
