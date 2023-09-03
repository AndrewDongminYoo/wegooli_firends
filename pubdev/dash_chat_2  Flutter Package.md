---
created: 23-09-03T19:09:56
tags: []
source: https://pub.dev/packages/dash_chat_2
author:
---

# dash_chat_2 | Flutter Package

![DashChat](https://firebasestorage.googleapis.com/v0/b/molteo-40978.appspot.com/o/DashChat.png?alt=media&token=b1adb9b0-c601-4a33-89b7-2cb722647401)

## The most complete Chat UI for flutter

Easy to use, highly customizable and fully featured

[![License](https://img.shields.io/github/license/SebastienBtr/Dash-Chat-2?label=License)](https://github.com/SebastienBtr/Dash-Chat-2/blob/main/LICENSE)
[![Pub version](https://img.shields.io/pub/v/dash_chat_2?color=blue)](https://pub.dev/packages/dash_chat_2)
[![Contributors](https://img.shields.io/github/all-contributors/SebastienBtr/Dash-Chat-2/main)](https://pub.dev/packages/dash_chat_2#contributors)

![DashChat](https://firebasestorage.googleapis.com/v0/b/molteo-40978.appspot.com/o/Screenshot1.png?alt=media&token=b77546dc-8fea-4aab-ac1b-3de5a2a90654)
![DashChat](https://firebasestorage.googleapis.com/v0/b/molteo-40978.appspot.com/o/Screenshot2.png?alt=media&token=2bf2ac8e-cb6e-44e7-876d-8c6a7959819e)

- Fully customizable components
- Multi-line TextInput
- Touchable links using [flutter_parsed_text](https://pub.dev/packages/flutter_parsed_text)
- Avatar as user's initials or profile picture
- Quick Reply messages
- Load earlier messages
- Scroll to bottom Widget
- Multiple media support (Audio support: WIP)
- @ Mention users (or anything else)
- Typing users
- Reply to messages - WIP
- Message status - WIP

You need another feature? you can use the `customProperties` field of the models, it allows you to pass other data to the library that you can then use inside custom builders to implement any feature you need.

Of course, if you think this feature can be useful to other people, feel free to open an issue/pull-request to discuss including it "natively" in the package.

```dart
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';

class Basic extends StatefulWidget {
  @override
  _BasicState createState() => _BasicState();
}

class _BasicState extends State<Basic> {
  ChatUser user = ChatUser(
    id: '1',
    firstName: 'Charles',
    lastName: 'Leclerc',
  );

  List<ChatMessage> messages = <ChatMessage>[
    ChatMessage(
      text: 'Hey!',
      user: user,
      createdAt: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic example'),
      ),
      body: DashChat(
        currentUser: user,
        onSend: (ChatMessage m) {
          setState(() {
            messages.insert(0, m);
          });
        },
        messages: messages,
      ),
    );
  }
}
```

You can run the [example](https://github.com/SebastienBtr/Dash-Chat-2/blob/main/example) project to see more complex ways of using the package

- [ChatUser](https://pub.dev/documentation/dash_chat_2/latest/dash_chat_2/ChatUser-class.html) currentUser - required: Basically "you", we need to know who is the current user to put their messages to right side

- Function([ChatMessage](https://pub.dev/documentation/dash_chat_2/latest/dash_chat_2/ChatMessage-class.html) message) onSend - required: Function to call when the user sends a message, that's where you handle the logic to send the message to your backend and append the list of `messages`

- List<[ChatMessage](https://pub.dev/documentation/dash_chat_2/latest/dash_chat_2/ChatMessage-class.html)\> messages - required: The list of messages of the channel, you would usually not load all the messages at once but use the `onLoadEarlier` param of `MessageListOptions` to trigger a lazy loading

- [InputOptions](https://pub.dev/documentation/dash_chat_2/latest/dash_chat_2/InputOptions-class.html) inputOptions - optional: Options to customize the behaviour and design of the chat input

- [MessageOptions](https://pub.dev/documentation/dash_chat_2/latest/dash_chat_2/MessageOptions-class.html) messageOptions - optional: Options to customize the behaviour and design of the messages

- [MessageListOptions](https://pub.dev/documentation/dash_chat_2/latest/dash_chat_2/MessageListOptions-class.html) messageListOptions - optional: Options to customize the behaviour and design of the overall list of message

- [QuickReplyOptions](https://pub.dev/documentation/dash_chat_2/latest/dash_chat_2/QuickReplyOptions-class.html) quickReplyOptions - optional: Options to customize the behaviour and design of the quick replies

- [ScrollToBottomOptions](https://pub.dev/documentation/dash_chat_2/latest/dash_chat_2/ScrollToBottomOptions-class.html) scrollToBottomOptions - optional: Options to customize the behaviour and design of the scroll-to-bottom button

- readOnly - optional (default to false): Option to make the chat read only, it will hide the input field

- List<[ChatUser](https://pub.dev/documentation/dash_chat_2/latest/dash_chat_2/ChatUser-class.html)\> typingUsers - optional: List of users currently typing in the chat

You can browse the full Dart documentation here: [Documentation](https://pub.dev/documentation/dash_chat_2/latest/)

If you found this project useful, then please consider giving it a ⭐️ on Github: [https://github.com/SebastienBtr/Dash-Chat-2](https://github.com/SebastienBtr/Dash-Chat-2)

## Issues and feedback [#](https://pub.dev/packages/dash_chat_2#issues-and-feedback)

If you have any suggestions for including a feature or if something doesn't work, feel free to open a Github [issue](https://github.com/SebastienBtr/Dash-Chat-2/issues) or to open a [pull request](https://github.com/SebastienBtr/Dash-Chat-2/pulls), you are more than welcome to contribute!

<table><tbody><tr><td><a href="https://github.com/SebastienBtr" rel="ugc"><img src="https://avatars.githubusercontent.com/u/18089010?v=4?s=100" width="100px;" alt="SebastienBtr"><br><sub><b>SebastienBtr</b></sub></a><br><a href="https://github.com/SebastienBtr/Dash-Chat-2/commits?author=SebastienBtr" title="Code" rel="ugc">💻</a> <a href="https://pub.dev/packages/dash_chat_2#design-SebastienBtr" title="Design">🎨</a></td><td><a href="https://github.com/chuusungmin" rel="ugc"><img src="https://avatars.githubusercontent.com/u/17997403?v=4?s=100" width="100px;" alt="chuusungmin"><br><sub><b>chuusungmin</b></sub></a><br><a href="https://github.com/SebastienBtr/Dash-Chat-2/commits?author=chuusungmin" title="Code" rel="ugc">💻</a></td><td><a href="https://github.com/fufesou" rel="ugc"><img src="https://avatars.githubusercontent.com/u/13586388?v=4?s=100" width="100px;" alt="fufesou"><br><sub><b>fufesou</b></sub></a><br><a href="https://github.com/SebastienBtr/Dash-Chat-2/commits?author=fufesou" title="Code" rel="ugc">💻</a></td><td><a href="https://github.com/farmery" rel="ugc"><img src="https://avatars.githubusercontent.com/u/56759256?v=4?s=100" width="100px;" alt="Nwachi ifeanyichukwu Victor"><br><sub><b>Nwachi ifeanyichukwu Victor</b></sub></a><br><a href="https://github.com/SebastienBtr/Dash-Chat-2/commits?author=farmery" title="Code" rel="ugc">💻</a></td><td><a href="https://github.com/kaedeee" rel="ugc"><img src="https://avatars.githubusercontent.com/u/55743370?v=4?s=100" width="100px;" alt="Kaede Games"><br><sub><b>Kaede Games</b></sub></a><br><a href="https://github.com/SebastienBtr/Dash-Chat-2/commits?author=kaedeee" title="Code" rel="ugc">💻</a></td><td><a href="https://github.com/derekpitts28" rel="ugc"><img src="https://avatars.githubusercontent.com/u/83979577?v=4?s=100" width="100px;" alt="Derek Pitts"><br><sub><b>Derek Pitts</b></sub></a><br><a href="https://github.com/SebastienBtr/Dash-Chat-2/commits?author=derekpitts28" title="Code" rel="ugc">💻</a></td></tr><tr><td><a href="https://github.com/LegendAF" rel="ugc"><img src="https://avatars.githubusercontent.com/u/825344?v=4?s=100" width="100px;" alt="Alex Fernandez"><br><sub><b>Alex Fernandez</b></sub></a><br><a href="https://github.com/SebastienBtr/Dash-Chat-2/commits?author=LegendAF" title="Code" rel="ugc">💻</a></td></tr></tbody></table>

Thanks to [Fayeed](https://github.com/fayeed) who created the v1 of this package: [https://github.com/fayeed/dash_chat](https://github.com/fayeed/dash_chat) and made that possible!

[dash_chat_2 | Flutter Package](https://pub.dev/packages/dash_chat_2)
