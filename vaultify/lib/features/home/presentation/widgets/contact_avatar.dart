import 'package:flutter/material.dart';
import 'package:vaultify/app/extensions/context.dart';
import 'package:vaultify/app/extensions/textx.dart';
import 'package:vaultify/features/home/data/models/contact.dart';

class ContactAvatar extends StatelessWidget {
  const ContactAvatar({
    required this.contact,
    super.key,
  });
  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://xsgames.co/randomusers/avatar.php?g=${contact.gender}',
            ),
          ),
          Text(
            contact.name,
            style: context.textTheme.bodySmall,
          ).bold,
        ],
      ),
    );
  }
}
