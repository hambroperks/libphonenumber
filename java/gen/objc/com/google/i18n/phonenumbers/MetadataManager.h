//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/libphonenumber/java/libphonenumber/src/main/java/com/google/i18n/phonenumbers/MetadataManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleI18nPhonenumbersMetadataManager")
#ifdef RESTRICT_ComGoogleI18nPhonenumbersMetadataManager
#define INCLUDE_ALL_ComGoogleI18nPhonenumbersMetadataManager 0
#else
#define INCLUDE_ALL_ComGoogleI18nPhonenumbersMetadataManager 1
#endif
#undef RESTRICT_ComGoogleI18nPhonenumbersMetadataManager

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleI18nPhonenumbersMetadataManager_) && (INCLUDE_ALL_ComGoogleI18nPhonenumbersMetadataManager || defined(INCLUDE_ComGoogleI18nPhonenumbersMetadataManager))
#define ComGoogleI18nPhonenumbersMetadataManager_

@class ComGoogleI18nPhonenumbersMetadataManager_SingleFileMetadataMaps;
@class ComGoogleI18nPhonenumbersPhonemetadata_PhoneMetadata;
@class JavaUtilConcurrentAtomicAtomicReference;
@class JavaUtilConcurrentConcurrentHashMap;
@protocol ComGoogleI18nPhonenumbersMetadataLoader;
@protocol JavaUtilSet;

/*!
 @brief Manager for loading metadata for alternate formats and short numbers.We also declare some
  constants for phone number metadata loading, to more easily maintain all three types of metadata
  together.
 TODO: Consider managing phone number metadata loading here too.
 */
@interface ComGoogleI18nPhonenumbersMetadataManager : NSObject

#pragma mark Package-Private

+ (ComGoogleI18nPhonenumbersPhonemetadata_PhoneMetadata *)getAlternateFormatsForCountryWithInt:(jint)countryCallingCode;

/*!
 @param key the lookup key for the provided map, typically a region code or a country calling      code
 @param map the map containing mappings of already loaded metadata from their <code>key</code> . If      this 
 <code>key</code> 's metadata isn't already loaded, it will be added to this map after      loading
 @param filePrefix the prefix of the file to load metadata from
 @param metadataLoader the metadata loader used to inject alternative metadata sources
 */
+ (ComGoogleI18nPhonenumbersPhonemetadata_PhoneMetadata *)getMetadataFromMultiFilePrefixWithId:(id)key
                                                       withJavaUtilConcurrentConcurrentHashMap:(JavaUtilConcurrentConcurrentHashMap *)map
                                                                                  withNSString:(NSString *)filePrefix
                                                   withComGoogleI18nPhonenumbersMetadataLoader:(id<ComGoogleI18nPhonenumbersMetadataLoader>)metadataLoader;

+ (ComGoogleI18nPhonenumbersPhonemetadata_PhoneMetadata *)getShortNumberMetadataForRegionWithNSString:(NSString *)regionCode;

+ (ComGoogleI18nPhonenumbersMetadataManager_SingleFileMetadataMaps *)getSingleFileMetadataMapsWithJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)ref
                                                                                                                             withNSString:(NSString *)fileName
                                                                                              withComGoogleI18nPhonenumbersMetadataLoader:(id<ComGoogleI18nPhonenumbersMetadataLoader>)metadataLoader;

+ (id<JavaUtilSet>)getSupportedShortNumberRegions;

@end

J2OBJC_STATIC_INIT(ComGoogleI18nPhonenumbersMetadataManager)

inline NSString *ComGoogleI18nPhonenumbersMetadataManager_get_MULTI_FILE_PHONE_NUMBER_METADATA_FILE_PREFIX(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComGoogleI18nPhonenumbersMetadataManager_MULTI_FILE_PHONE_NUMBER_METADATA_FILE_PREFIX;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleI18nPhonenumbersMetadataManager, MULTI_FILE_PHONE_NUMBER_METADATA_FILE_PREFIX, NSString *)

inline NSString *ComGoogleI18nPhonenumbersMetadataManager_get_SINGLE_FILE_PHONE_NUMBER_METADATA_FILE_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComGoogleI18nPhonenumbersMetadataManager_SINGLE_FILE_PHONE_NUMBER_METADATA_FILE_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleI18nPhonenumbersMetadataManager, SINGLE_FILE_PHONE_NUMBER_METADATA_FILE_NAME, NSString *)

inline id<ComGoogleI18nPhonenumbersMetadataLoader> ComGoogleI18nPhonenumbersMetadataManager_get_DEFAULT_METADATA_LOADER(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<ComGoogleI18nPhonenumbersMetadataLoader> ComGoogleI18nPhonenumbersMetadataManager_DEFAULT_METADATA_LOADER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleI18nPhonenumbersMetadataManager, DEFAULT_METADATA_LOADER, id<ComGoogleI18nPhonenumbersMetadataLoader>)

FOUNDATION_EXPORT ComGoogleI18nPhonenumbersPhonemetadata_PhoneMetadata *ComGoogleI18nPhonenumbersMetadataManager_getAlternateFormatsForCountryWithInt_(jint countryCallingCode);

FOUNDATION_EXPORT ComGoogleI18nPhonenumbersPhonemetadata_PhoneMetadata *ComGoogleI18nPhonenumbersMetadataManager_getShortNumberMetadataForRegionWithNSString_(NSString *regionCode);

FOUNDATION_EXPORT id<JavaUtilSet> ComGoogleI18nPhonenumbersMetadataManager_getSupportedShortNumberRegions(void);

FOUNDATION_EXPORT ComGoogleI18nPhonenumbersPhonemetadata_PhoneMetadata *ComGoogleI18nPhonenumbersMetadataManager_getMetadataFromMultiFilePrefixWithId_withJavaUtilConcurrentConcurrentHashMap_withNSString_withComGoogleI18nPhonenumbersMetadataLoader_(id key, JavaUtilConcurrentConcurrentHashMap *map, NSString *filePrefix, id<ComGoogleI18nPhonenumbersMetadataLoader> metadataLoader);

FOUNDATION_EXPORT ComGoogleI18nPhonenumbersMetadataManager_SingleFileMetadataMaps *ComGoogleI18nPhonenumbersMetadataManager_getSingleFileMetadataMapsWithJavaUtilConcurrentAtomicAtomicReference_withNSString_withComGoogleI18nPhonenumbersMetadataLoader_(JavaUtilConcurrentAtomicAtomicReference *ref, NSString *fileName, id<ComGoogleI18nPhonenumbersMetadataLoader> metadataLoader);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleI18nPhonenumbersMetadataManager)

#endif

#if !defined (ComGoogleI18nPhonenumbersMetadataManager_SingleFileMetadataMaps_) && (INCLUDE_ALL_ComGoogleI18nPhonenumbersMetadataManager || defined(INCLUDE_ComGoogleI18nPhonenumbersMetadataManager_SingleFileMetadataMaps))
#define ComGoogleI18nPhonenumbersMetadataManager_SingleFileMetadataMaps_

@class ComGoogleI18nPhonenumbersPhonemetadata_PhoneMetadata;
@protocol ComGoogleI18nPhonenumbersMetadataLoader;

@interface ComGoogleI18nPhonenumbersMetadataManager_SingleFileMetadataMaps : NSObject

#pragma mark Package-Private

- (ComGoogleI18nPhonenumbersPhonemetadata_PhoneMetadata *)getWithInt:(jint)countryCallingCode;

- (ComGoogleI18nPhonenumbersPhonemetadata_PhoneMetadata *)getWithNSString:(NSString *)regionCode;

+ (ComGoogleI18nPhonenumbersMetadataManager_SingleFileMetadataMaps *)load__WithNSString:(NSString *)fileName
                                            withComGoogleI18nPhonenumbersMetadataLoader:(id<ComGoogleI18nPhonenumbersMetadataLoader>)metadataLoader;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleI18nPhonenumbersMetadataManager_SingleFileMetadataMaps)

FOUNDATION_EXPORT ComGoogleI18nPhonenumbersMetadataManager_SingleFileMetadataMaps *ComGoogleI18nPhonenumbersMetadataManager_SingleFileMetadataMaps_load__WithNSString_withComGoogleI18nPhonenumbersMetadataLoader_(NSString *fileName, id<ComGoogleI18nPhonenumbersMetadataLoader> metadataLoader);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleI18nPhonenumbersMetadataManager_SingleFileMetadataMaps)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleI18nPhonenumbersMetadataManager")