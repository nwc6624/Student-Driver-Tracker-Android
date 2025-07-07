import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy for Student Driver Tracker',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Last Updated: December 2024',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 24),
            
            _buildSection(
              context,
              'Introduction',
              'Student Driver Tracker ("we," "our," or "us") is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our mobile application (the "App").',
            ),
            
            _buildSection(
              context,
              'Information We Collect',
              null,
              children: [
                _buildSubsection(context, 'Personal Information', [
                  'Driver Information: Name, age, and notes about individual drivers',
                  'Session Data: Driving session details including date, duration, location, and notes',
                  'Progress Tracking: Total hours required and completed for each driver',
                ]),
                _buildSubsection(context, 'Device Information', [
                  'Location Data: We may request location permissions to help you log driving sessions with location information',
                  'Storage Access: We request storage permissions to save PDF reports and app data locally on your device',
                ]),
                _buildSubsection(context, 'Usage Information', [
                  'App Preferences: Theme settings (light/dark mode) and other user preferences',
                  'Session Data: Information about your use of the app features',
                ]),
              ],
            ),
            
            _buildSection(
              context,
              'How We Use Your Information',
              'We use the collected information for the following purposes:',
              children: [
                _buildNumberedList(context, [
                  'Driver Management: To create and manage driver profiles',
                  'Session Tracking: To log and track driving sessions with details like date, duration, and location',
                  'Progress Monitoring: To track progress toward required driving hours',
                  'Report Generation: To create PDF driving logs for record-keeping',
                  'App Functionality: To provide core app features and maintain user preferences',
                  'Improvement: To improve app functionality and user experience',
                ]),
              ],
            ),
            
            _buildSection(
              context,
              'Data Storage and Security',
              null,
              children: [
                _buildSubsection(context, 'Local Storage', [
                  'All data is stored locally on your device using secure local databases (Hive)',
                  'We do not transmit your data to external servers',
                  'Your information remains under your control and on your device',
                ]),
                _buildSubsection(context, 'Data Security', [
                  'We implement appropriate security measures to protect your information',
                  'Data is encrypted when stored locally',
                  'We do not collect or store sensitive personal information beyond what is necessary for app functionality',
                ]),
              ],
            ),
            
            _buildSection(
              context,
              'Data Sharing and Disclosure',
              'We do not:',
              children: [
                _buildBulletList(context, [
                  'Sell, trade, or otherwise transfer your personal information to third parties',
                  'Share your data with advertising networks',
                  'Use your information for marketing purposes',
                  'Transmit your data to external servers or cloud services',
                ]),
              ],
            ),
            
            _buildSection(
              context,
              'Permissions We Request',
              null,
              children: [
                _buildSubsection(context, 'Location Permission', [
                  'Purpose: To automatically capture location data when logging driving sessions',
                  'Usage: Location data is only used to record where driving sessions occurred',
                  'Control: You can deny this permission and manually enter location information',
                ]),
                _buildSubsection(context, 'Storage Permission', [
                  'Purpose: To save PDF reports and app data to your device',
                  'Usage: Allows you to export driving logs as PDF files',
                  'Control: You can deny this permission, but PDF export functionality will be limited',
                ]),
              ],
            ),
            
            _buildSection(
              context,
              'Your Rights and Choices',
              'You have the right to:',
              children: [
                _buildBulletList(context, [
                  'Access: View all data stored in the app',
                  'Modify: Edit driver information and session data',
                  'Delete: Remove drivers and sessions from the app',
                  'Export: Generate PDF reports of your driving data',
                  'Control Permissions: Grant or revoke app permissions at any time',
                ]),
              ],
            ),
            
            _buildSection(
              context,
              'Data Retention',
              null,
              children: [
                _buildBulletList(context, [
                  'Data is stored locally on your device for as long as you use the app',
                  'When you uninstall the app, all local data is automatically deleted',
                  'We do not maintain copies of your data after app deletion',
                ]),
              ],
            ),
            
            _buildSection(
              context,
              'Children\'s Privacy',
              'This app is designed for tracking supervised driving sessions for teen drivers. If you are under 18, please ensure you have parental consent before using this app. We do not knowingly collect personal information from children under 13.',
            ),
            
            _buildSection(
              context,
              'Third-Party Services',
              'Our app may use the following third-party services:',
              children: [
                _buildBulletList(context, [
                  'Hive: For local data storage',
                  'PDF Generation: For creating driving log reports',
                  'Location Services: For capturing location data (device-dependent)',
                ]),
                const SizedBox(height: 8),
                Text(
                  'These services only process data locally on your device and do not transmit information to external servers.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            
            _buildSection(
              context,
              'Changes to This Privacy Policy',
              'We may update this Privacy Policy from time to time. We will notify you of any changes by:',
              children: [
                _buildBulletList(context, [
                  'Posting the new Privacy Policy in the app',
                  'Updating the "Last Updated" date at the top of this policy',
                ]),
              ],
            ),
            
            _buildSection(
              context,
              'Contact Information',
              'If you have any questions about this Privacy Policy or our data practices, please contact us at:',
              children: [
                const SizedBox(height: 8),
                Text(
                  'Email: nocaulfield@gmail.com',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            
            _buildSection(
              context,
              'California Privacy Rights',
              'If you are a California resident, you have additional rights under the California Consumer Privacy Act (CCPA). Please contact us for more information about these rights.',
            ),
            
            _buildSection(
              context,
              'International Users',
              'This app is designed for use in the United States. If you are using this app from outside the United States, please be aware that your information may be transferred to, stored, and processed in the United States where our servers are located.',
            ),
            
            _buildSection(
              context,
              'Consent',
              'By using the Student Driver Tracker app, you consent to the collection and use of information in accordance with this Privacy Policy.',
            ),
            
            const SizedBox(height: 24),
            Divider(color: Theme.of(context).colorScheme.outline),
            const SizedBox(height: 16),
            Text(
              'This Privacy Policy is effective as of the date listed above and applies to all users of the Student Driver Tracker app.',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context,
    String title,
    String? description, {
    List<Widget>? children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 8),
        if (description != null) ...[
          Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 8),
        ],
        if (children != null) ...children,
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildSubsection(
    BuildContext context,
    String title,
    List<String> items,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        ...items.map((item) => Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• ', style: Theme.of(context).textTheme.bodyMedium),
              Expanded(
                child: Text(
                  item,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        )),
        const SizedBox(height: 12),
      ],
    );
  }

  Widget _buildBulletList(BuildContext context, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) => Padding(
        padding: const EdgeInsets.only(left: 16, bottom: 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: Theme.of(context).textTheme.bodyMedium),
            Expanded(
              child: Text(
                item,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      )).toList(),
    );
  }

  Widget _buildNumberedList(BuildContext context, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;
        return Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${index + 1}. ',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Expanded(
                child: Text(
                  item,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
} 