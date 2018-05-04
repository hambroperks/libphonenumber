//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/libphonenumber/java/geocoder/src/main/java/com/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder")
#ifdef RESTRICT_ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder
#define INCLUDE_ALL_ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder 0
#else
#define INCLUDE_ALL_ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder 1
#endif
#undef RESTRICT_ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder

#if !defined (ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder_) && (INCLUDE_ALL_ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder || defined(INCLUDE_ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder))
#define ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder_

@class ComGoogleI18nPhonenumbersPhonenumber_PhoneNumber;
@class JavaUtilLocale;

/*!
 @brief An offline geocoder which provides geographical information related to a phone number.
 @author Shaopeng Jia
 */
@interface ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder : NSObject

#pragma mark Public

/*!
 @brief As per <code>getDescriptionForValidNumber(PhoneNumber,Locale)</code> but explicitly checks
 the validity of the number passed in.
 @param number  the phone number for which we want to get a text description
 @param languageCode  the language code for which the description should be written
 @return a text description for the given language code for the given phone number, or empty
 string if the number passed in is invalid
 */
- (NSString *)getDescriptionForNumberWithComGoogleI18nPhonenumbersPhonenumber_PhoneNumber:(ComGoogleI18nPhonenumbersPhonenumber_PhoneNumber *)number
                                                                       withJavaUtilLocale:(JavaUtilLocale *)languageCode;

/*!
 @brief As per <code>getDescriptionForValidNumber(PhoneNumber,Locale,String)</code> but
 explicitly checks the validity of the number passed in.
 @param number  the phone number for which we want to get a text description
 @param languageCode  the language code for which the description should be written
 @param userRegion  the region code for a given user. This region will be omitted from the
 description if the phone number comes from this region. It is a two-letter uppercase ISO
 country code as defined by ISO 3166-1.
 @return a text description for the given language code for the given phone number, or empty
 string if the number passed in is invalid
 */
- (NSString *)getDescriptionForNumberWithComGoogleI18nPhonenumbersPhonenumber_PhoneNumber:(ComGoogleI18nPhonenumbersPhonenumber_PhoneNumber *)number
                                                                       withJavaUtilLocale:(JavaUtilLocale *)languageCode
                                                                             withNSString:(NSString *)userRegion;

/*!
 @brief Returns a text description for the given phone number, in the language provided.
 The
 description might consist of the name of the country where the phone number is from, or the
 name of the geographical area the phone number is from if more detailed information is
 available.
 <p>This method assumes the validity of the number passed in has already been checked, and that
 the number is suitable for geocoding. We consider fixed-line and mobile numbers possible
 candidates for geocoding.
 @param number  a valid phone number for which we want to get a text description
 @param languageCode  the language code for which the description should be written
 @return a text description for the given language code for the given phone number
 */
- (NSString *)getDescriptionForValidNumberWithComGoogleI18nPhonenumbersPhonenumber_PhoneNumber:(ComGoogleI18nPhonenumbersPhonenumber_PhoneNumber *)number
                                                                            withJavaUtilLocale:(JavaUtilLocale *)languageCode;

/*!
 @brief As per <code>getDescriptionForValidNumber(PhoneNumber,Locale)</code> but also considers the
 region of the user.
 If the phone number is from the same region as the user, only a lower-level
 description will be returned, if one exists. Otherwise, the phone number's region will be
 returned, with optionally some more detailed information.
 <p>For example, for a user from the region "US" (United States), we would show "Mountain View,
 CA" for a particular number, omitting the United States from the description. For a user from
 the United Kingdom (region "GB"), for the same number we may show "Mountain View, CA, United
 States" or even just "United States".
 <p>This method assumes the validity of the number passed in has already been checked.
 @param number  the phone number for which we want to get a text description
 @param languageCode  the language code for which the description should be written
 @param userRegion  the region code for a given user. This region will be omitted from the
 description if the phone number comes from this region. It is a two-letter uppercase ISO
 country code as defined by ISO 3166-1.
 @return a text description for the given language code for the given phone number, or empty
 string if the number passed in is invalid
 */
- (NSString *)getDescriptionForValidNumberWithComGoogleI18nPhonenumbersPhonenumber_PhoneNumber:(ComGoogleI18nPhonenumbersPhonenumber_PhoneNumber *)number
                                                                            withJavaUtilLocale:(JavaUtilLocale *)languageCode
                                                                                  withNSString:(NSString *)userRegion;

/*!
 @brief Gets a <code>PhoneNumberOfflineGeocoder</code> instance to carry out international phone number
 geocoding.
 <p> The <code>PhoneNumberOfflineGeocoder</code> is implemented as a singleton. Therefore, calling
 this method multiple times will only result in one instance being created.
 @return a <code>PhoneNumberOfflineGeocoder</code> instance
 */
+ (ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder *)getInstance;

#pragma mark Package-Private

- (instancetype)initWithNSString:(NSString *)phonePrefixDataDirectory;

@end

J2OBJC_STATIC_INIT(ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder)

FOUNDATION_EXPORT void ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder_initWithNSString_(ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder *self, NSString *phonePrefixDataDirectory);

FOUNDATION_EXPORT ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder *new_ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder_initWithNSString_(NSString *phonePrefixDataDirectory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder *create_ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder_initWithNSString_(NSString *phonePrefixDataDirectory);

FOUNDATION_EXPORT ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder *ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder_getInstance();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleI18nPhonenumbersGeocodingPhoneNumberOfflineGeocoder")