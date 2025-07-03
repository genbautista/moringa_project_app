import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewArticle extends StatefulWidget {
  final String title;
  final String url;
  final String category;

  const WebViewArticle({
    super.key,
    required this.title,
    required this.url,
    required this.category,
  });

  @override
  State<WebViewArticle> createState() => _WebViewArticleState();
}

class _WebViewArticleState extends State<WebViewArticle> {
  late final WebViewController _controller;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _initializeWebView();
  }

  void _initializeWebView() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0xFFFAF7F0))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar if needed
          },
          onPageStarted: (String url) {
            setState(() {
              _isLoading = true;
              _errorMessage = null;
            });
          },
          onPageFinished: (String url) {
            setState(() {
              _isLoading = false;
            });
          },
          onWebResourceError: (WebResourceError error) {
            setState(() {
              _isLoading = false;
              _errorMessage = 'Failed to load article. Please check your internet connection.';
            });
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }

  void _refresh() {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });
    _controller.reload();
  }

  void _goBack() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFFFAF7F0)),
          onPressed: _goBack,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontFamily: 'GlacialIndifference',
                color: Color(0xFFFAF7F0),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              widget.category,
              style: const TextStyle(
                fontFamily: 'GlacialIndifference',
                color: Color(0xFFFAF7F0),
                fontSize: 12,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Color(0xFFFAF7F0)),
            onPressed: _refresh,
          ),
          IconButton(
            icon: const Icon(Icons.share, color: Color(0xFFFAF7F0)),
            onPressed: () {
              // Implement share functionality
              debugPrint('Share article: ${widget.url}');
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Share functionality coming soon!'),
                  backgroundColor: Color(0xFF47734E),
                ),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // WebView content
          if (_errorMessage == null)
            WebViewWidget(controller: _controller)
          else
            _buildErrorView(),
          
          // Loading indicator
          if (_isLoading)
            Container(
              color: const Color(0xFFFAF7F0),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF47734E)),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Loading article...',
                      style: TextStyle(
                        fontFamily: 'GlacialIndifference',
                        color: Color(0xFF47734E),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildErrorView() {
    return Container(
      color: const Color(0xFFFAF7F0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF47734E).withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.error_outline,
                  size: 60,
                  color: Color(0xFF47734E),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Oops! Something went wrong',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GlacialIndifference',
                  color: Color(0xFF47734E),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                _errorMessage ?? 'Unable to load the article',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'GlacialIndifference',
                  color: Color(0xFF3A1A14),
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _refresh,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF47734E),
                      foregroundColor: const Color(0xFFFAF7F0),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.refresh, size: 18),
                        SizedBox(width: 8),
                        Text(
                          'Try Again',
                          style: TextStyle(
                            fontFamily: 'GlacialIndifference',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  OutlinedButton(
                    onPressed: _goBack,
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF47734E),
                      side: const BorderSide(color: Color(0xFF47734E)),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.arrow_back, size: 18),
                        SizedBox(width: 8),
                        Text(
                          'Go Back',
                          style: TextStyle(
                            fontFamily: 'GlacialIndifference',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}