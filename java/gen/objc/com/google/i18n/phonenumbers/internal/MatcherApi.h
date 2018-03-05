//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/libphonenumber/java/libphonenumber/src/main/java/com/google/i18n/phonenumbers/internal/MatcherApi.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleI18nPhonenumbersInternalMatcherApi")
#ifdef RESTRICT_ComGoogleI18nPhonenumbersInternalMatcherApi
#define INCLUDE_ALL_ComGoogleI18nPhonenumbersInternalMatcherApi 0
#else
#define INCLUDE_ALL_ComGoogleI18nPhonenumbersInternalMatcherApi 1
#endif
#undef RESTRICT_ComGoogleI18nPhonenumbersInternalMatcherApi

#if !defined (ComGoogleI18nPhonenumbersInternalMatcherApi_) && (INCLUDE_ALL_ComGoogleI18nPhonenumbersInternalMatcherApi || defined(INCLUDE_ComGoogleI18nPhonenumbersInternalMatcherApi))
#define ComGoogleI18nPhonenumbersInternalMatcherApi_

@class ComGoogleI18nPhonenumbersPhonemetadata_PhoneNumberDesc;
@protocol JavaLangCharSequence;

/*!
 @brief Internal phonenumber matching API used to isolate the underlying implementation of the
  matcher and allow different implementations to be swapped in easily.
 */
@protocol ComGoogleI18nPhonenumbersInternalMatcherApi < JavaObject >

/*!
 @brief Returns whether the given national number (a string containing only decimal digits) matches
  the national number pattern defined in the given <code>PhoneNumberDesc</code> message.
 */
- (jboolean)matchNationalNumberWithJavaLangCharSequence:(id<JavaLangCharSequence>)number
withComGoogleI18nPhonenumbersPhonemetadata_PhoneNumberDesc:(ComGoogleI18nPhonenumbersPhonemetadata_PhoneNumberDesc *)numberDesc
                                            withBoolean:(jboolean)allowPrefixMatch;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleI18nPhonenumbersInternalMatcherApi)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleI18nPhonenumbersInternalMatcherApi)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleI18nPhonenumbersInternalMatcherApi")
