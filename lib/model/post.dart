import 'package:english_words/english_words.dart';

class Post {
    const Post({
        this.title,
        this.author,
        this.imageUrl
    });

    final title;
    final author;
    final imageUrl;
}

var wordPair = new WordPair.random();

final List<Post> posts = [
    Post (
        title: new WordPair.random().asPascalCase,
        author: new WordPair.random().asPascalCase,
        imageUrl: 'assets/1.jpg'
    ),
    Post (
        title: new WordPair.random().asPascalCase,
        author: new WordPair.random().asPascalCase,
        imageUrl: 'assets/15.jpg'
    ),
    Post (
        title: new WordPair.random().asPascalCase,
        author: new WordPair.random().asPascalCase,
        imageUrl: 'assets/2.jpg'
    ),
    Post (
        title: new WordPair.random().asPascalCase,
        author: new WordPair.random().asPascalCase,
        imageUrl: 'assets/3.jpg'
    )
];