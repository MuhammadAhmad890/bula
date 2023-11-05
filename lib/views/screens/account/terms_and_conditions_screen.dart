import 'package:bula/utils/constants/app_sizes.dart';
import 'package:bula/views/widgets/account/custom_back_button.dart';
import 'package:bula/views/widgets/account/facititiy_widget.dart';
import 'package:bula/views/widgets/account/reporting_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Terms & Conditions"),
        leading: CustomBackButton(),
      ),
      body: ListView(
        padding: AppSizes.bodyAllPadding,
        children: [
          SizedBox(height: 4.h),
          Text(
            'Legal terms',
            style: TextStyle(
              color: Color(0xFF060C11),
              fontSize: 12,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 4.h),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              shadows: [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 12,
                  offset: Offset(1, 1),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              children: [
                FacilityWidget(text: "4 September 2023", icon: Icons.analytics_outlined),
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: Text(
                    "Connect Media built the Garmentline as a Free app. This SERVICE is"
                    " provided by Connect Media at no cost and is intended for use as is"
                    "This page is used to inform visitors regarding my policies with the "
                    "collection,"
                    " use, and disclosure of Personal Information if anyone decided to use"
                    " my Service."
                    "If you choose to use my Service, then you agree to the collection and"
                    " use of information"
                    " in relation to this policy. The Personal Information that I collect is"
                    " used for providing and"
                    " improving the Service. I will not use or share your"
                    " information with anyone"
                    " except as described in this Privacy Policy. ",
                    style: TextStyle(
                      color: Color(0xFF060C11),
                      fontSize: 12,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            'Terms and Condition for Indian user',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
              "Information Collection and Use For a better experience, while using our Service,"
              " I may require you to provide us with certain personally identifiable information."
              " The information that I request will be retained on your device and is not collected"
              " by me in any way. The app does use third party services that may collect"
              " information used to identify you. Link to privacy policy of third party service"
              " providers used by the app Google Play Services Firebase Analytics Log Data "
              "I want to inform you that whenever you use my Service, in a case of an error in"
              " the app I collect data and information (through third party products) on your"
              " phone called Log Data. This Log Data may include information such as your"
              " device Internet Protocol (“IP”) address, device name, operating system version,"
              " the configuration of the app when utilizing my Service, the time and date of"
              " your use of the Service, and other statistics.Cookies, Cookies are files with"
              " a small amount of data that are commonly used as anonymous unique identifiers."
              " These are sent to your browser from the websites that you visit and are stored"
              " on your device's internal memory. "
              "This Service does not use these “cookies” explicitly. However, the app may use"
              " third party code and libraries that use “cookies” to collect information and"
              " improve their services. You have the option to either accept or refuse these"
              " cookies and know when a cookie is being sent to your device. If you choose to"
              " refuse our cookies, you may not be able to use some portions of this Service. "
              "Service Providers I may employ third-party companies and individuals due to the"
              " following reasons: To facilitate our Service; To provide the Service on our"
              " behalf; To perform Service-related services; or To assist us in analyzing how"
              " our Service is used. I want to inform users of this Service that these third"
              " parties have access to your Personal Information. The reason is to perform the"
              " tasks assigned to them on our behalf. However, they are obligated not to"
              " disclose or use the information for any other purpose. Security"
              "I value your trust in providing us your Personal Information, thus we are"
              " striving to use commercially acceptable means of protecting it. But remember"
              " that no method of transmission over the internet, or method of electronic"
              " storage is 100% secure and reliable, and I cannot guarantee its absolute"
              " security. We only use permission that need to run this app."
              "Permissions *Internet - To check that user Online or Offline"
              " *Network State *Users Phone Number for Authentication via OTPLinks to Other"
              " SitesThis Service may contain links to other sites. If you click on a"
              " third-party link, you will be directed to that site. Note that these external"
              " sites are not operated by me. Therefore, I strongly advise you to review the"
              " Privacy Policy of these websites. I have no control over and assume no"
              " responsibility for the content, privacy policies, or practices of any"
              " third-party sites or services.Children’s PrivacyThese Services do not address"
              " anyone under the age of 13. I do not knowingly collect personally identifiable"
              " information from children under 13. In the case I discover that a child under "
              "13 has provided me with personal information, I immediately delete this from our"
              " servers. If you are a parent or guardian and you are aware that your child has"
              " provided us with personal information, please contact me so that I will be able"
              " to do necessary actions.Changes to This Privacy PolicyI may update our Privacy"
              " Policy from time to time. Thus, you are advised to review this page"
              " periodically for any changes. I will notify you of any changes by posting the"
              " new Privacy Policy on this page. These changes are effective immediately after"
              " they are posted on this page.Contact Us",
              style: TextStyle(
                color: Color(0xFF060C11),
                fontSize: 12,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ))
        ],
      ),
    );
  }
}
