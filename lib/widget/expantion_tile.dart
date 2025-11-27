import 'package:flutter/material.dart';

class ProfileExpansionTile extends StatefulWidget {
  final String label;
  final String value;
  final List<String> options;
  final Function(String) onSelected;

  const ProfileExpansionTile({
    super.key,
    required this.label,
    required this.value,
    required this.options,
    required this.onSelected,
  });

  @override
  State<ProfileExpansionTile> createState() => _ProfileExpansionTileState();
}

class _ProfileExpansionTileState extends State<ProfileExpansionTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF737373),
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade300),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: ExpansionTile(
            title: Text(
              widget.value,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
            trailing: Icon(
              _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              color: Colors.grey.shade600,
            ),
            initiallyExpanded: false,
            onExpansionChanged: (expanded) {
              setState(() {
                _isExpanded = expanded;
              });
            },
            expandedAlignment: Alignment.centerLeft,
            children: widget.options.map((option) {
              return Container(
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey.shade200)),
                ),
                child: ListTile(
                  title: Text(
                    option,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  onTap: () {
                    widget.onSelected(option);
                    setState(() {
                      _isExpanded = false; // Auto collapse
                    });
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
