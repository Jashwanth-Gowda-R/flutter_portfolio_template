import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';

/// A widget for displaying individual blog posts.
class BlogPost extends StatefulWidget {
  final String title;
  final String body;
  final bool isWeb;
  final String date;
  final String category;

  const BlogPost({
    super.key,
    required this.title,
    required this.body,
    required this.isWeb,
    this.date = 'Jan 1, 2024',
    this.category = 'General',
  });

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  bool expand = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.isWeb
          ? const EdgeInsets.symmetric(horizontal: 70.0, vertical: 20.0)
          : const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: InkWell(
        onTap: () {
          setState(() {
            expand = !expand;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.tealAccent, width: 2.0),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.tealAccent.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Title with category chip
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 6.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.tealAccent.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            widget.category,
                            style: GoogleFonts.openSans(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15.0),
                        Expanded(
                          child: Sansbold(
                            text: widget.title,
                            size: widget.isWeb ? 24.0 : 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Expand button
                  IconButton(
                    onPressed: () {
                      setState(() {
                        expand = !expand;
                      });
                    },
                    icon: Icon(
                      expand ? Icons.expand_less : Icons.expand_more,
                      color: Colors.teal,
                      size: 30.0,
                    ),
                  ),
                ],
              ),

              // Date
              Padding(
                padding: const EdgeInsets.only(left: 55.0, top: 5.0),
                child: Text(
                  widget.date,
                  style: GoogleFonts.openSans(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),

              const SizedBox(height: 15.0),

              // Body content
              Text(
                widget.body,
                style: GoogleFonts.openSans(
                  fontSize: widget.isWeb ? 16.0 : 14.0,
                  height: 1.6,
                ),
                maxLines: expand ? null : 3,
                overflow: expand ? TextOverflow.visible : TextOverflow.ellipsis,
              ),

              // Read More/Less indicator
              if (!expand)
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Read more',
                        style: GoogleFonts.openSans(
                          fontSize: 14.0,
                          color: Colors.teal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_right,
                        color: Colors.teal,
                        size: 18.0,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
