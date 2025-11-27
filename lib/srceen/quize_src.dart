import 'package:flutter/material.dart';
import 'package:task/widget/Elevatedbutton.dart';
import 'package:task/models/quiz_model.dart';

class QuizScreen extends StatefulWidget {
  final Quiz quiz;

  const QuizScreen({super.key, required this.quiz});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int? _selectedIndex;

  void _selectAnswer(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _nextQuestion() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  "Back",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Let's Test Your Understanding!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D3748),
                    ),
                  ),
                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFFDBF1FF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          widget.quiz.category,
                          style: const TextStyle(
                            fontSize: 16,

                            color: Color(0xFF008DE7),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        widget.quiz.timeLimit,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2D3748),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      "Q. ${widget.quiz.question}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2D3748),
                        height: 1.4,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  Expanded(
                    child: Column(
                      children: [
                        _OptionItem(
                          option: widget.quiz.getOptionLetter(0),
                          text: widget.quiz.options[0],
                          isSelected: _selectedIndex == 0,
                          onTap: () => _selectAnswer(0),
                        ),
                        const SizedBox(height: 8),
                        _OptionItem(
                          option: widget.quiz.getOptionLetter(1),
                          text: widget.quiz.options[1],
                          isSelected: _selectedIndex == 1,
                          onTap: () => _selectAnswer(1),
                        ),
                        const SizedBox(height: 8),
                        _OptionItem(
                          option: widget.quiz.getOptionLetter(2),
                          text: widget.quiz.options[2],
                          isSelected: _selectedIndex == 2,
                          onTap: () => _selectAnswer(2),
                        ),
                        const SizedBox(height: 8),
                        _OptionItem(
                          option: widget.quiz.getOptionLetter(3),
                          text: widget.quiz.options[3],
                          isSelected: _selectedIndex == 3,
                          onTap: () => _selectAnswer(3),
                        ),

                        const Spacer(),
                        CustomElevatedButton(
                          onPressed: _selectedIndex != null
                              ? _nextQuestion
                              : () {},
                          text: "Next",
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OptionItem extends StatelessWidget {
  final String option;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const _OptionItem({
    required this.option,
    required this.text,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected
                ? const Color(0xFF6C63FF)
                : const Color(0xFFE2E8F0),
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2D3748),
                ),
              ),
            ),
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xFF6C63FF) : Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected
                      ? const Color(0xFF6C63FF)
                      : const Color(0xFFE2E8F0),
                  width: 2,
                ),
              ),
              child: Center(
                child: Text(
                  option,
                  style: TextStyle(
                    color: isSelected ? Colors.white : const Color(0xFF2D3748),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
