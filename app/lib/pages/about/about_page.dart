import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yidrop_app/gen/strings.g.dart';
import 'package:yidrop_app/pages/debug/debug_page.dart';
import 'package:yidrop_app/widget/local_send_logo.dart';
import 'package:yidrop_app/widget/responsive_list_view.dart';
import 'package:routerino/routerino.dart';
import 'package:url_launcher/url_launcher.dart';

part 'contributors.dart';
final _translatorWithGithubRegex = RegExp(r'(.+) \(@([\w\-_]+)\)');

class AboutPage extends StatelessWidget {
  const AboutPage();

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return Scaffold(
      appBar: AppBar(
        title: Text(t.aboutPage.title),
      ),
      body: ResponsiveListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          const SizedBox(height: 20),
          const YiDropLogo(withText: true),
          Text(
            'Copyright ${DateTime.now().year} lingyicute',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Center(
            child: TextButton(
              onPressed: () async {
                await launchUrl(Uri.parse('https://drop.92li.us.kg'));
              },
              child: const Text('drop.92li.us.kg'),
            ),
          ),
          const SizedBox(height: 10),
          Text(t.aboutPage.description.join('\n\n')),
          const SizedBox(height: 20),
          Text(t.aboutPage.author, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text.rich(_buildContributor(
            label: 'lingyicute',
            primaryColor: primaryColor,
          )),
          const SizedBox(height: 20),
          Text(t.aboutPage.contributors, style: const TextStyle(fontWeight: FontWeight.bold)),
          ..._contributors.map((contributor) {
            return Text.rich(_buildContributor(
              label: contributor,
              primaryColor: primaryColor,
            ));
          }),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () async {
                  await launchUrl(Uri.parse('https://github.com/lingyicute/yidrop'), mode: LaunchMode.externalApplication);
                },
                child: const Text('YiDrop 源代码'),
              ),
              TextButton(
                onPressed: () async {
                  await context.push(() => const LicensePage());
                },
                child: const Text('鸣谢'),
              ),
              TextButton(
                onPressed: () async {
                  await context.push(() => const DebugPage());
                },
                child: const Text('调试选项'),
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

/// Displays the contributor name and links to their github profile.
InlineSpan _buildContributor({required String label, required Color primaryColor, bool newLine = false}) {
  final newLineStr = newLine ? '\n' : '';

  if (label.startsWith('@')) {
    // Only github name
    return TextSpan(
      text: '$newLineStr$label',
      style: TextStyle(color: primaryColor),
      recognizer: TapGestureRecognizer()
        ..onTap = () async {
          await launchUrl(Uri.parse('https://github.com/${label.substring(1)}'), mode: LaunchMode.externalApplication);
        },
    );
  }

  final match = _translatorWithGithubRegex.firstMatch(label);
  if (match != null) {
    // Full name and github name
    final fullName = match.group(1)!;
    final githubName = match.group(2)!;
    return TextSpan(
      children: [
        TextSpan(text: '$newLineStr$fullName'),
        const TextSpan(text: ' '),
        TextSpan(
          text: '@$githubName',
          style: TextStyle(color: primaryColor),
          recognizer: TapGestureRecognizer()
            ..onTap = () async {
              await launchUrl(Uri.parse('https://github.com/$githubName'), mode: LaunchMode.externalApplication);
            },
        ),
      ],
    );
  }

  // Only full name
  return TextSpan(text: '$newLineStr$label');
}
