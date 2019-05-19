class Post{
  const Post({
    this.title,
    this.author,
    this.imageUrl,
    this.description,
  });
  //final 表示一旦变量分配值后就不可以改变
  final String title;
  final String author;
  final String imageUrl;
  final String description;
}
// 指定posts是 列表类型的数据 列表里的每一项是Post
final List<Post> posts =[
  Post(
    title:'敏哥好1',
    author:'qxmin',
    imageUrl:'http://pic32.nipic.com/20130823/13339320_183302468194_2.jpg',
    description:'敏哥好1111的描述敏哥好1111的描述敏哥好1111的描述敏哥好1111的描述敏哥好1111的描述敏哥好1111的描述敏哥好1111的描述'
  ),
  Post(
    title:'敏哥好2',
    author:'qxmin',
    imageUrl:'http://pic40.nipic.com/20140412/18428321_144447597175_2.jpg',
    description:'敏哥好2222的描述敏哥好1111的描述敏哥好1111的描述敏哥好1111的描述敏哥好1111的描述敏哥好1111的描述敏哥好1111的描述'
  ),
  Post(
    title:'敏哥好3',
    author:'qxmin',
    imageUrl:'http://pic40.nipic.com/20140412/18428321_144447597175_2.jpg',
    description:'敏哥好3333的描述敏哥好1111的描述敏哥好1111的描述敏哥好1111的描述敏哥好1111的描述敏哥好1111的描述敏哥好1111的描述'
  )
];