import 'package:design_system/design_system.dart';
import 'package:design_system/src/tokens/box_decoration.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final void Function(String)? onChanged;
  final List? suggestions;
  final void Function(int index)?
  onSuggestionTapped; // Generic callback that lets the parent widget know which suggestion was tapped
  const SearchField({
    this.onChanged,
    this.suggestions,
    this.onSuggestionTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: primaryColor, width: borderWidth),
            borderRadius: BorderRadius.circular(borderRadius),
            color: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(onChanged: onChanged),
          ),
        ),
        (suggestions != null && onSuggestionTapped != null)
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: SuggestionWindow(
                  suggestions: suggestions!,
                  onSuggestionTapped: onSuggestionTapped!,
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }
}

class SuggestionWindow extends StatelessWidget {
  final List suggestions;
  final void Function(int index) onSuggestionTapped;
  const SuggestionWindow({
    super.key,
    required this.suggestions,
    required this.onSuggestionTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: primaryColor),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      constraints: BoxConstraints(maxHeight: 500),
      child: ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onSuggestionTapped(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(suggestions[index].toString()),
            ),
          );
        },
        shrinkWrap: true,
      ),
    );
  }
}
