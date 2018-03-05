//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/libphonenumber/java/libphonenumber/src/com/google/i18n/phonenumbers/internal/RegexCache.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleI18nPhonenumbersInternalRegexCache")
#ifdef RESTRICT_ComGoogleI18nPhonenumbersInternalRegexCache
#define INCLUDE_ALL_ComGoogleI18nPhonenumbersInternalRegexCache 0
#else
#define INCLUDE_ALL_ComGoogleI18nPhonenumbersInternalRegexCache 1
#endif
#undef RESTRICT_ComGoogleI18nPhonenumbersInternalRegexCache

#if !defined (ComGoogleI18nPhonenumbersInternalRegexCache_) && (INCLUDE_ALL_ComGoogleI18nPhonenumbersInternalRegexCache || defined(INCLUDE_ComGoogleI18nPhonenumbersInternalRegexCache))
#define ComGoogleI18nPhonenumbersInternalRegexCache_

@class JavaUtilRegexPattern;

/*!
 @brief LRU Cache for compiled regular expressions used by the libphonenumbers libary.
 @author Shaopeng Jia
 */
@interface ComGoogleI18nPhonenumbersInternalRegexCache : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)size;

- (JavaUtilRegexPattern *)getPatternForRegexWithNSString:(NSString *)regex;

#pragma mark Package-Private

- (jboolean)containsRegexWithNSString:(NSString *)regex;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleI18nPhonenumbersInternalRegexCache)

FOUNDATION_EXPORT void ComGoogleI18nPhonenumbersInternalRegexCache_initWithInt_(ComGoogleI18nPhonenumbersInternalRegexCache *self, jint size);

FOUNDATION_EXPORT ComGoogleI18nPhonenumbersInternalRegexCache *new_ComGoogleI18nPhonenumbersInternalRegexCache_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleI18nPhonenumbersInternalRegexCache *create_ComGoogleI18nPhonenumbersInternalRegexCache_initWithInt_(jint size);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleI18nPhonenumbersInternalRegexCache)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleI18nPhonenumbersInternalRegexCache")
