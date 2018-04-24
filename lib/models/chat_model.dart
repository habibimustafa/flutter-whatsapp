class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

List<ChatModel> dummyData = [
  new ChatModel(
    name:       'John Doe', 
    message:    'Hey Flutter!', 
    time:       '15.30', 
    avatarUrl:  'https://placeimg.com/640/640/animals'
  ),
  new ChatModel(
    name:       'Tony Stark', 
    message:    'Hey whats up bro', 
    time:       '15.35', 
    avatarUrl:  'https://placeimg.com/640/640/animals'
  ),
  new ChatModel(
    name:       'Elon Musk', 
    message:    'Hey Dude!', 
    time:       '15.37', 
    avatarUrl:  'https://placeimg.com/640/640/animals'
  ),
];