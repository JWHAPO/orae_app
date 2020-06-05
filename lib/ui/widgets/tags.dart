import 'package:flutter/material.dart';

Widget tags(List<String> tags){
  return Wrap(
    children: tags.map((tag) {
        return Container(
          margin: const EdgeInsets.only(left: 10),
          child: Chip(
            label: Text(tag),
          ),
        );
      }
    ).toList()
  );
}