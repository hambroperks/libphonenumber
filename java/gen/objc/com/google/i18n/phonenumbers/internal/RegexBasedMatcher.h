//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/libphonenumber/java/libphonenumber/src/main/java/com/google/i18n/phonenumbers/internal/RegexBasedMatcher.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleI18nPhonenumbersInternalRegexBasedMatcher")
#ifdef RESTRICT_ComGoogleI18nPhonenumbersInternalRegexBasedMatcher
#define INCLUDE_ALL_ComGoogleI18nPhonenumbersInternalRegexBasedMatcher 0
#else
#define INCLUDE_ALL_ComGoogleI18nPhonenumbersInternalRegexBasedMatcher 1
#endif
#undef RESTRICT_ComGoogleI18nPhonenumbersInternalRegexBasedMatcher

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleI18nPhonenumbersInternalRegexBasedMatcher_) && (INCLUDE_ALL_ComGoogleI18nPhonenumbersInternalRegexBasedMatcher || defined(INCLUDE_ComGoogleI18nPhonenumbersInternalRegexBasedMatcher))
#define ComGoogleI18nPhonenumbersInternalRegexBasedMatcher_

#define RESTRICT_ComGoogleI18nPhonenumbersInternalMatcherApi 1
#define INCLUDE_ComGoogleI18nPhonenumbersInternalMatcherApi 1
#include "com/google/i18n/phonenumbers/internal/MatcherApi.h"

@class ComGoogleI18nPhonenumbersPhonemetadata_PhoneNumberDesc;
@protocol JavaLangCharSequence;

/*!
 @brief Implementation of the matcher API using the regular expressions in the PhoneNumberDesc
  proto message to match numbers.
 */
@interface ComGoogleI18nPhonenumbersInternalRegexBasedMatcher : NSObject < ComGoogleI18nPhonenumbersInternalMatcherApi >

#pragma mark Public

+ (id<ComGoogleI18nPhonenumbersInternalMatcherApi>)create;

- (jboolean)matchNationalNumberWithJavaLangCharSequence:(id<JavaLangCharSequence>)number
withComGoogleI18nPhonenumbersPhonemetadata_PhoneNumberDesc:(ComGoogleI18nPhonenumbersPhonemetadata_PhoneNumberDesc *)numberDesc
                                            withBoolean:(jboolean)allowPrefixMatch;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleI18nPhonenumbersInternalRegexBasedMatcher)

FOUNDATION_EXPORT id<ComGoogleI18nPhonenumbersInternalMatcherApi> ComGoogleI18nPhonenumbersInternalRegexBasedMatcher_create(void);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleI18nPhonenumbersInternalRegexBasedMatcher)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleI18nPhonenumbersInternalRegexBasedMatcher")
