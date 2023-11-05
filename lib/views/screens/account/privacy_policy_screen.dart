import 'package:bula/views/widgets/account/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/app_sizes.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Privacy Policy"),
        centerTitle: true,
        leading: const CustomBackButton(),
      ),
      body: ListView(
        padding: AppSizes.bodyHorizontalPadding,
        children: [
          const Text(
            'Legal terms',
            style: TextStyle(
              color: Color(0xFF060C11),
              fontSize: 12,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 4.h),
          const Text(
            'App privacy policy',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 4.h),
          const Text(
            'Privacy Policy for Indian user',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 4.h),
          const Text.rich(
            TextSpan(
              children: [
              TextSpan(
              text: 'Information Collection and Use\nFor a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.\nThe app does use third party services that may collect information used to identify you.\nLink to privacy policy of third party service providers used by the app\n',
              style: TextStyle(
                color: Color(0xFF060C11),
                fontSize: 12,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Google Play Services\n',
              style: TextStyle(
                color: Color(0xFF060C11),
                fontSize: 12,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(
              text: 'Firebase Analytics\n',
              style: TextStyle(
                color: Color(0xFF060C11),
                fontSize: 12,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,

              ),
            ),
            TextSpan(
                text: "Log Data\nI want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.\nCookies\nCookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.\nThis Service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.\nService Providers\nI may employ third-party companies and individuals due to the following reasons:\n'",
            style: TextStyle(
            color: Color(0xFF060C11),
            fontSize: 12,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w400,
          ),
          ),
          TextSpan(
          text: 'To facilitate our Service;\nTo provide the Service on our behalf;\nTo perform Service-related services; or\nTo assist us in analyzing how our Service is used.\n',
          style: TextStyle(
            color: Color(0xFF060C11),
            fontSize: 12,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w400,
          ),
          ),
          TextSpan(
          text: 'I want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.\nSecurity\nI value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.\nWe only use permission that need to run this app.\nPermissions\n*Internet - To check that user Online or Offline\n*Network State\n*Users Phone Number for Authentication via OTP\nLinks to Other Sites\nThis Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.\nChildren’s Privacy\nThese Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions.\nChanges to This Privacy Policy\nI may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately after they are posted on this page.\nContact Us',
          style: TextStyle(
            color: Color(0xFF060C11),
            fontSize: 12,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w400,
          ),
          ),
        ],
      ),
    )
        ],
      ),
    );
  }
}
