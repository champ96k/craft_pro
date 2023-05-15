import 'package:craft_pro/core/model/editor_model.dart';
import 'package:craft_pro/core/model/folder_model.dart';
import 'package:craft_pro/core/model/helper_placeholder_card_model/helper_placeholder_card_model.dart';
import 'package:flutter/material.dart';

class Constants {
  static List<FolderModel> folderItem = [
    FolderModel(
      name: 'Fitness',
      emoji: '👗',
      itemCount: '0',
      description: 'This is demo descrition name! ',
      editorModel: const EditorModel(
        contain: "Hello",
        title: "Defy Club",
        createAt: '3 month ago',
        updatedAt: '1 hour ago',
      ),
    ),
    FolderModel(
      name: 'Daily Standup',
      emoji: '👩‍💼',
      itemCount: '1',
      description: 'This is my personal docs,',
      editorModel: const EditorModel(
        contain: "Hello",
        title: "Defy Club",
        createAt: '3 month ago',
        updatedAt: '1 hour ago',
      ),
    ),
    FolderModel(
      name: 'AddaGames',
      emoji: '🎱',
      itemCount: '0',
      editorModel: const EditorModel(
        contain: "Hello",
        title: "Defy Club",
        createAt: '3 month ago',
        updatedAt: '1 hour ago',
      ),
    ),
    FolderModel(
      name: 'Quick Notes',
      emoji: '📝',
      itemCount: '0',
      editorModel: const EditorModel(
        contain: "Hello",
        title: "Defy Club",
        createAt: '3 month ago',
        updatedAt: '1 hour ago',
      ),
    ),
    FolderModel(
      name: 'Quick Update',
      itemCount: '0',
      editorModel: const EditorModel(
        contain: "Hello",
        title: "Defy Club",
        createAt: '3 month ago',
        updatedAt: '1 hour ago',
      ),
    ),
    FolderModel(
      name: 'Meeting Notes',
      itemCount: '0',
      editorModel: const EditorModel(
        contain: "Hello",
        title: "Defy Club",
        createAt: '3 month ago',
        updatedAt: '1 hour ago',
      ),
    ),
    FolderModel(
      name: 'DSA Roadmap',
      emoji: '🕵️',
      itemCount: '0',
      editorModel: const EditorModel(
        contain: "Hello",
        title: "Defy Club",
        createAt: '3 month ago',
        updatedAt: '1 hour ago',
      ),
    ),
  ];

  static List<HelperPlaceholderCardModel> placeholderCard = [
    HelperPlaceholderCardModel(
      title: "Business",
      subTitle: 'Collaborate, share, organize & plan with your team.',
      color: Colors.green,
    ),
    HelperPlaceholderCardModel(
      title: "Creative",
      subTitle:
          'See how Craft pro can help you to produce stunning documents you will be proud to share.',
      color: Colors.purple,
    ),
    HelperPlaceholderCardModel(
      title: "Students",
      subTitle: 'From class notes to assignment, Craft Pro is here to help',
      color: Colors.indigo,
    ),
    HelperPlaceholderCardModel(
      title: "Writing",
      subTitle: 'Discover why Craft Pro is the best place to write and publish',
      color: Colors.black,
    ),
    HelperPlaceholderCardModel(
      title: "Teams",
      subTitle:
          'Craft Pro help teams stay connected. See how others use Craft Pro to improve their workflows.',
      color: Colors.blue,
    ),
    HelperPlaceholderCardModel(
      title: "Home",
      subTitle: "Whether it's collection or managing task, we got you covered",
      color: Colors.red,
    ),
  ];

  //! About trailing text
  static const unsortedDocuments =
      "Documents which aren't in any folder are collected here";
  static const starDocuments =
      "Star documents you want to easily find later. Only you can see your star items.";

  static const templatesDocuments =
      "Documents added to this folder can be used as templates when creating a new documents or page.";

  static List<EditorModel> dummyModels = [
    const EditorModel(
      contain: """
Here are the release notes for the changes:

  Firebase crashlytics has been implemented to help improve the stability and reliability of the app. This will allow us to identify and fix any issues that may arise in the future. [Dev side]
  An emulator device check has been added to the app. If the user is using the app on an emulator, they will not have access to the app. This is to ensure the app is only being used on legitimate devices.
  The JusPay plugin has been implemented to improve the payment process within the app. This will allow users to make payments more easily and securely.
  The app update bypass issue has been addressed. Users should now be able to update the app without any issues.
  The API call session key expire condition has been checked and addressed. If the session key expires, the user will be logged out and redirected to the login screen.
  The app log has been disabled on production to improve the performance and privacy of the app. This will ensure that sensitive information is not logged on production servers.
  Rooted device check

Here are the release notes for the changes:

Firebase crashlytics has been implemented to help improve the stability and reliability of the app. This will allow us to identify and fix any issues that may arise in the future. [Dev side]
An emulator device check has been added to the app. If the user is using the app on an emulator, they will not have access to the app. This is to ensure the app is only being used on legitimate devices.
The JusPay plugin has been implemented to improve the payment process within the app. This will allow users to make payments more easily and securely.
The app update bypass issue has been addressed. Users should now be able to update the app without any issues.
The API call session key expire condition has been checked and addressed. If the session key expires, the user will be logged out and redirected to the login screen.
The app log has been disabled on production to improve the performance and privacy of the app. This will ensure that sensitive information is not logged on production servers.
Rooted device check

Here are the release notes for the changes:

Firebase crashlytics has been implemented to help improve the stability and reliability of the app. This will allow us to identify and fix any issues that may arise in the future. [Dev side]
An emulator device check has been added to the app. If the user is using the app on an emulator, they will not have access to the app. This is to ensure the app is only being used on legitimate devices.
The JusPay plugin has been implemented to improve the payment process within the app. This will allow users to make payments more easily and securely.
The app update bypass issue has been addressed. Users should now be able to update the app without any issues.
The API call session key expire condition has been checked and addressed. If the session key expires, the user will be logged out and redirected to the login screen.
The app log has been disabled on production to improve the performance and privacy of the app. This will ensure that sensitive information is not logged on production servers.
Rooted device check

      """,
      title: "Hey there",
      createAt: '32 month ago',
      updatedAt: '13 hour ago',
      subTitle: 'This my documents, please read carefully.',
    ),
    const EditorModel(
      contain: "Welcome",
      title: "Hello this is temp",
      createAt: '5 month ago',
      updatedAt: '12 hour ago',
      subTitle: 'No informaction found!',
    ),
    const EditorModel(
      contain: "Not Welcome",
      title: "Hey there",
      createAt: '3 month ago',
      updatedAt: '1 hour ago',
      subTitle: 'This my documents',
    ),
    const EditorModel(
      contain: "Hello there",
      title: "John deo",
      createAt: '33 month ago',
      updatedAt: '0.3 hour ago',
      subTitle: 'Alex! What are you doing',
    ),
    const EditorModel(
      contain: "College notes",
      title: "Tushar Nikam",
      createAt: '5 month ago',
      updatedAt: '9 hour ago',
      subTitle: 'hey john! Whats up?',
    ),
    const EditorModel(
      contain: "Notes informaction Welcome",
      title: "Notes informaction",
      createAt: '44 month ago',
      updatedAt: '13 hour ago',
      subTitle: 'dummy data info',
    ),
    const EditorModel(
      contain: "Welcome Yes",
      title: "TODO list",
      createAt: '39 month ago',
      updatedAt: '02 hour ago',
      subTitle: 'Typing something bla bla',
    ),
    const EditorModel(
      contain: "Welcome Nooooo",
      title: "Joh deo resume",
      createAt: '3 month ago',
      updatedAt: '1 hour ago',
      subTitle: 'Hey there',
    ),
  ];
}
