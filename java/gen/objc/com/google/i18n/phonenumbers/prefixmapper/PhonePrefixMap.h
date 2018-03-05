//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/libphonenumber/java/internal/prefixmapper/src/main/java/com/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap")
#ifdef RESTRICT_ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap
#define INCLUDE_ALL_ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap 0
#else
#define INCLUDE_ALL_ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap 1
#endif
#undef RESTRICT_ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap

#if !defined (ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_) && (INCLUDE_ALL_ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap || defined(INCLUDE_ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap))
#define ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_

#define RESTRICT_JavaIoExternalizable 1
#define INCLUDE_JavaIoExternalizable 1
#include "java/io/Externalizable.h"

@class ComGoogleI18nPhonenumbersPhonenumber_PhoneNumber;
@class ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy;
@protocol JavaIoObjectInput;
@protocol JavaIoObjectOutput;
@protocol JavaUtilSortedMap;

/*!
 @brief A utility that maps phone number prefixes to a description string, which may be, for example,
  the geographical area the prefix covers.
 @author Shaopeng Jia
 */
@interface ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap : NSObject < JavaIoExternalizable >

#pragma mark Public

/*!
 @brief Creates an empty <code>PhonePrefixMap</code>.The default constructor is necessary for implementing 
 <code>Externalizable</code>.
 The empty map could later be populated by 
 <code>readPhonePrefixMap(java.util.SortedMap)</code> or <code>readExternal(java.io.ObjectInput)</code>.
 */
- (instancetype)init;

/*!
 @brief As per <code>lookup(long)</code>, but receives the number as a PhoneNumber instead of a long.
 @param number the phone number to look up
 @return the description corresponding to the prefix that best matches this phone number
 */
- (NSString *)lookupWithComGoogleI18nPhonenumbersPhonenumber_PhoneNumber:(ComGoogleI18nPhonenumbersPhonenumber_PhoneNumber *)number;

/*!
 @brief Supports Java Serialization.
 */
- (void)readExternalWithJavaIoObjectInput:(id<JavaIoObjectInput>)objectInput;

/*!
 @brief Creates an <code>PhonePrefixMap</code> initialized with <code>sortedPhonePrefixMap</code>.Note that the
  underlying implementation of this method is expensive thus should not be called by
  time-critical applications.
 @param sortedPhonePrefixMap a map from phone number prefixes to descriptions of those prefixes  sorted in ascending order of the phone number prefixes as integers.
 */
- (void)readPhonePrefixMapWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)sortedPhonePrefixMap;

/*!
 @brief Dumps the mappings contained in the phone prefix map.
 */
- (NSString *)description;

/*!
 @brief Supports Java Serialization.
 */
- (void)writeExternalWithJavaIoObjectOutput:(id<JavaIoObjectOutput>)objectOutput;

#pragma mark Package-Private

- (ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *)getPhonePrefixMapStorage;

/*!
 @brief Gets the smaller phone prefix map storage strategy according to the provided phone prefix map.
 It actually uses (outputs the data to a stream) both strategies and retains the best one which
  make this method quite expensive.
 */
- (ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *)getSmallerMapStorageWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)phonePrefixMap;

/*!
 @brief Returns the description of the <code>number</code>.This method distinguishes the case of an invalid
  prefix and a prefix for which the name is not available in the current language.
 If the
  description is not available in the current language an empty string is returned. If no
  description was found for the provided number, null is returned.
 @param number the phone number to look up
 @return the description of the number
 */
- (NSString *)lookupWithLong:(jlong)number;

@end

J2OBJC_STATIC_INIT(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap)

FOUNDATION_EXPORT void ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_init(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap *self);

FOUNDATION_EXPORT ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap *new_ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap *create_ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap")
