import 'package:json_annotation/json_annotation.dart';
import 'package:petstagram/models/models.dart';

part 'post.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Post {
  Post({
    this.id,
    this.author,
    this.imageUrls,
    this.description,
  });

  final String id;
  final User author;
  final List<String> imageUrls;
  final String description;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
