//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/libphonenumber/java/libphonenumber/src/main/java/com/google/i18n/phonenumbers/SingleFileMetadataSourceImpl.java
//

#include "J2ObjC_source.h"
#include "com/google/i18n/phonenumbers/MetadataLoader.h"
#include "com/google/i18n/phonenumbers/MetadataManager.h"
#include "com/google/i18n/phonenumbers/Phonemetadata.h"
#include "com/google/i18n/phonenumbers/SingleFileMetadataSourceImpl.h"
#include "java/util/concurrent/atomic/AtomicReference.h"

@interface ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl () {
 @public
  NSString *phoneNumberMetadataFileName_;
  id<ComGoogleI18nPhonenumbersMetadataLoader> metadataLoader_;
  JavaUtilConcurrentAtomicAtomicReference *phoneNumberMetadataRef_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl, phoneNumberMetadataFileName_, NSString *)
J2OBJC_FIELD_SETTER(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl, metadataLoader_, id<ComGoogleI18nPhonenumbersMetadataLoader>)
J2OBJC_FIELD_SETTER(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl, phoneNumberMetadataRef_, JavaUtilConcurrentAtomicAtomicReference *)

@implementation ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl

- (instancetype __nonnull)initWithNSString:(NSString *)phoneNumberMetadataFileName
withComGoogleI18nPhonenumbersMetadataLoader:(id<ComGoogleI18nPhonenumbersMetadataLoader>)metadataLoader {
  ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithNSString_withComGoogleI18nPhonenumbersMetadataLoader_(self, phoneNumberMetadataFileName, metadataLoader);
  return self;
}

- (instancetype __nonnull)initWithComGoogleI18nPhonenumbersMetadataLoader:(id<ComGoogleI18nPhonenumbersMetadataLoader>)metadataLoader {
  ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithComGoogleI18nPhonenumbersMetadataLoader_(self, metadataLoader);
  return self;
}

- (ComGoogleI18nPhonenumbersPhonemetadata_PhoneMetadata *)getMetadataForRegionWithNSString:(NSString *)regionCode {
  return [((ComGoogleI18nPhonenumbersMetadataManager_SingleFileMetadataMaps *) nil_chk(ComGoogleI18nPhonenumbersMetadataManager_getSingleFileMetadataMapsWithJavaUtilConcurrentAtomicAtomicReference_withNSString_withComGoogleI18nPhonenumbersMetadataLoader_(phoneNumberMetadataRef_, phoneNumberMetadataFileName_, metadataLoader_))) getWithNSString:regionCode];
}

- (ComGoogleI18nPhonenumbersPhonemetadata_PhoneMetadata *)getMetadataForNonGeographicalRegionWithInt:(jint)countryCallingCode {
  return [((ComGoogleI18nPhonenumbersMetadataManager_SingleFileMetadataMaps *) nil_chk(ComGoogleI18nPhonenumbersMetadataManager_getSingleFileMetadataMapsWithJavaUtilConcurrentAtomicAtomicReference_withNSString_withComGoogleI18nPhonenumbersMetadataLoader_(phoneNumberMetadataRef_, phoneNumberMetadataFileName_, metadataLoader_))) getWithInt:countryCallingCode];
}

@end

void ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithNSString_withComGoogleI18nPhonenumbersMetadataLoader_(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl *self, NSString *phoneNumberMetadataFileName, id<ComGoogleI18nPhonenumbersMetadataLoader> metadataLoader) {
  NSObject_init(self);
  self->phoneNumberMetadataRef_ = new_JavaUtilConcurrentAtomicAtomicReference_init();
  self->phoneNumberMetadataFileName_ = phoneNumberMetadataFileName;
  self->metadataLoader_ = metadataLoader;
}

ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl *new_ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithNSString_withComGoogleI18nPhonenumbersMetadataLoader_(NSString *phoneNumberMetadataFileName, id<ComGoogleI18nPhonenumbersMetadataLoader> metadataLoader) {
  J2OBJC_NEW_IMPL(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl, initWithNSString_withComGoogleI18nPhonenumbersMetadataLoader_, phoneNumberMetadataFileName, metadataLoader)
}

ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl *create_ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithNSString_withComGoogleI18nPhonenumbersMetadataLoader_(NSString *phoneNumberMetadataFileName, id<ComGoogleI18nPhonenumbersMetadataLoader> metadataLoader) {
  J2OBJC_CREATE_IMPL(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl, initWithNSString_withComGoogleI18nPhonenumbersMetadataLoader_, phoneNumberMetadataFileName, metadataLoader)
}

void ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithComGoogleI18nPhonenumbersMetadataLoader_(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl *self, id<ComGoogleI18nPhonenumbersMetadataLoader> metadataLoader) {
  ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithNSString_withComGoogleI18nPhonenumbersMetadataLoader_(self, ComGoogleI18nPhonenumbersMetadataManager_SINGLE_FILE_PHONE_NUMBER_METADATA_FILE_NAME, metadataLoader);
}

ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl *new_ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithComGoogleI18nPhonenumbersMetadataLoader_(id<ComGoogleI18nPhonenumbersMetadataLoader> metadataLoader) {
  J2OBJC_NEW_IMPL(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl, initWithComGoogleI18nPhonenumbersMetadataLoader_, metadataLoader)
}

ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl *create_ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithComGoogleI18nPhonenumbersMetadataLoader_(id<ComGoogleI18nPhonenumbersMetadataLoader> metadataLoader) {
  J2OBJC_CREATE_IMPL(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl, initWithComGoogleI18nPhonenumbersMetadataLoader_, metadataLoader)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl)