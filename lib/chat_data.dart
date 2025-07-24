class ChatModel {
  String fname;
  String image;
  String msg;
  String time;

  ChatModel({
    required this.fname,
    required this.image,
    required this.msg,
    required this.time,

  });
  static List<ChatModel> getChats() {
    List<ChatModel> chats = [

    ];
    chats.addAll([
      ChatModel(fname: 'Raabia', image: 'https://images.pexels.com/photos/1097456/pexels-photo-1097456.jpeg', msg: "hey? you there??", time: "2:02AM"),
      ChatModel(fname: 'Fatima', image: 'https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg', msg: "Assignment done?", time: "11:12PM"),
      ChatModel(fname: 'Zaid', image: 'https://images.pexels.com/photos/774664/pexels-photo-774664.jpeg', msg: "Send me the link", time: "10:30PM"),
      ChatModel(fname: 'Sara', image: 'https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg', msg: "On my way!", time: "9:50PM"),
      ChatModel(fname: 'Bilal', image: 'https://images.pexels.com/photos/177809/pexels-photo-177809.jpeg', msg: "Let's catch up soon", time: "8:15PM"),
      ChatModel(fname: 'Hina', image: 'https://images.pexels.com/photos/1697912/pexels-photo-1697912.jpeg', msg: "Typing...", time: "7:40PM"),
      ChatModel(fname: 'Ali', image: 'https://images.pexels.com/photos/301952/pexels-photo-301952.jpeg', msg: "Got it, thanks!", time: "6:22PM"),
      ChatModel(fname: 'Noor', image: 'https://images.pexels.com/photos/17734325/pexels-photo-17734325.jpeg', msg: "What about tomorrow?", time: "5:13PM"),
      ChatModel(fname: 'Hamza', image: 'https://images.pexels.com/photos/819530/pexels-photo-819530.jpeg', msg: "😂😂 bro seriously", time: "4:55PM"),
      ChatModel(fname: 'J', image: 'https://images.pexels.com/photos/1697912/pexels-photo-1697912.jpeg', msg: "Typing...", time: "7:40PM"),
      ChatModel(fname: 'S', image: 'https://images.pexels.com/photos/301952/pexels-photo-301952.jpeg', msg: "Got it, thanks!", time: "6:22PM"),
      ChatModel(fname: 'Khadia', image: 'https://images.pexels.com/photos/17734325/pexels-photo-17734325.jpeg', msg: "What about tomorrow?", time: "5:13PM"),
      ChatModel(fname: 'Yofu', image: 'https://images.pexels.com/photos/819530/pexels-photo-819530.jpeg', msg: "😂😂 bro seriously", time: "4:55PM"),


    ]);
  return chats;

  }
  }
