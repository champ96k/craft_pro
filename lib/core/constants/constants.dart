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
    ),
    FolderModel(
      name: 'Daily Standup',
      emoji: '👩‍💼',
      itemCount: '1',
      description: 'This is my personal docs,',
    ),
    FolderModel(
      name: 'AddaGames',
      emoji: '🎱',
      itemCount: '0',
    ),
    FolderModel(
      name: 'Quick Notes',
      emoji: '📝',
      itemCount: '0',
    ),
    FolderModel(
      name: 'Quick Update',
      itemCount: '0',
    ),
    FolderModel(
      name: 'Meeting Notes',
      itemCount: '0',
    ),
    FolderModel(
      name: 'DSA Roadmap',
      emoji: '🕵️',
      itemCount: '0',
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
}
