//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/libphonenumber/java/carrier/src/main/java/com/google/i18n/phonenumbers/PhoneNumberToCarrierMapper.java
//

#include "J2ObjC_source.h"
#include "com/google/i18n/phonenumbers/PhoneNumberToCarrierMapper.h"
#include "com/google/i18n/phonenumbers/PhoneNumberUtil.h"
#include "com/google/i18n/phonenumbers/Phonenumber.h"
#include "com/google/i18n/phonenumbers/prefixmapper/PrefixFileReader.h"
#include "java/util/Locale.h"

@interface ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper () {
 @public
  ComGoogleI18nPhonenumbersPrefixmapperPrefixFileReader *prefixFileReader_;
  ComGoogleI18nPhonenumbersPhoneNumberUtil *phoneUtil_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper, prefixFileReader_, ComGoogleI18nPhonenumbersPrefixmapperPrefixFileReader *)
J2OBJC_FIELD_SETTER(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper, phoneUtil_, ComGoogleI18nPhonenumbersPhoneNumberUtil *)

inline ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper *ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_get_instance(void);
inline ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper *ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_set_instance(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper *value);
static ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper *ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_instance;
J2OBJC_STATIC_FIELD_OBJ(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper, instance, ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper *)

inline NSString *ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_get_MAPPING_DATA_DIRECTORY(void);
static NSString *ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_MAPPING_DATA_DIRECTORY = @"/com/google/i18n/phonenumbers/carrier/data/";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper, MAPPING_DATA_DIRECTORY, NSString *)

__attribute__((unused)) static jboolean ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_isMobileWithComGoogleI18nPhonenumbersPhoneNumberUtil_PhoneNumberType_(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper *self, ComGoogleI18nPhonenumbersPhoneNumberUtil_PhoneNumberType *numberType);

J2OBJC_INITIALIZED_DEFN(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper)

@implementation ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper

- (instancetype)initWithNSString:(NSString *)phonePrefixDataDirectory {
  ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_initWithNSString_(self, phonePrefixDataDirectory);
  return self;
}

+ (ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper *)getInstance {
  return ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_getInstance();
}

- (NSString *)getNameForValidNumberWithComGoogleI18nPhonenumbersPhonenumber_PhoneNumber:(ComGoogleI18nPhonenumbersPhonenumber_PhoneNumber *)number
                                                                     withJavaUtilLocale:(JavaUtilLocale *)languageCode {
  NSString *langStr = [((JavaUtilLocale *) nil_chk(languageCode)) getLanguage];
  NSString *scriptStr = @"";
  NSString *regionStr = [languageCode getCountry];
  return [((ComGoogleI18nPhonenumbersPrefixmapperPrefixFileReader *) nil_chk(prefixFileReader_)) getDescriptionForNumberWithComGoogleI18nPhonenumbersPhonenumber_PhoneNumber:number withNSString:langStr withNSString:scriptStr withNSString:regionStr];
}

- (NSString *)getNameForNumberWithComGoogleI18nPhonenumbersPhonenumber_PhoneNumber:(ComGoogleI18nPhonenumbersPhonenumber_PhoneNumber *)number
                                                                withJavaUtilLocale:(JavaUtilLocale *)languageCode {
  ComGoogleI18nPhonenumbersPhoneNumberUtil_PhoneNumberType *numberType = [((ComGoogleI18nPhonenumbersPhoneNumberUtil *) nil_chk(phoneUtil_)) getNumberTypeWithComGoogleI18nPhonenumbersPhonenumber_PhoneNumber:number];
  if (ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_isMobileWithComGoogleI18nPhonenumbersPhoneNumberUtil_PhoneNumberType_(self, numberType)) {
    return [self getNameForValidNumberWithComGoogleI18nPhonenumbersPhonenumber_PhoneNumber:number withJavaUtilLocale:languageCode];
  }
  return @"";
}

- (NSString *)getSafeDisplayNameWithComGoogleI18nPhonenumbersPhonenumber_PhoneNumber:(ComGoogleI18nPhonenumbersPhonenumber_PhoneNumber *)number
                                                                  withJavaUtilLocale:(JavaUtilLocale *)languageCode {
  if ([((ComGoogleI18nPhonenumbersPhoneNumberUtil *) nil_chk(phoneUtil_)) isMobileNumberPortableRegionWithNSString:[phoneUtil_ getRegionCodeForNumberWithComGoogleI18nPhonenumbersPhonenumber_PhoneNumber:number]]) {
    return @"";
  }
  return [self getNameForNumberWithComGoogleI18nPhonenumbersPhonenumber_PhoneNumber:number withJavaUtilLocale:languageCode];
}

- (void)dealloc {
  RELEASE_(prefixFileReader_);
  RELEASE_(phoneUtil_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper class]) {
    JreStrongAssign(&ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_instance, nil);
    J2OBJC_SET_INITIALIZED(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper)
  }
}

@end

void ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_initWithNSString_(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper *self, NSString *phonePrefixDataDirectory) {
  NSObject_init(self);
  JreStrongAssign(&self->prefixFileReader_, nil);
  JreStrongAssign(&self->phoneUtil_, ComGoogleI18nPhonenumbersPhoneNumberUtil_getInstance());
  JreStrongAssignAndConsume(&self->prefixFileReader_, new_ComGoogleI18nPhonenumbersPrefixmapperPrefixFileReader_initWithNSString_(phonePrefixDataDirectory));
}

ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper *new_ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_initWithNSString_(NSString *phonePrefixDataDirectory) {
  J2OBJC_NEW_IMPL(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper, initWithNSString_, phonePrefixDataDirectory)
}

ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper *create_ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_initWithNSString_(NSString *phonePrefixDataDirectory) {
  J2OBJC_CREATE_IMPL(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper, initWithNSString_, phonePrefixDataDirectory)
}

ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper *ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_getInstance() {
  ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_initialize();
  @synchronized(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_class_()) {
    if (ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_instance == nil) {
      JreStrongAssignAndConsume(&ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_instance, new_ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_initWithNSString_(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_MAPPING_DATA_DIRECTORY));
    }
    return JreRetainedLocalValue(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_instance);
  }
}

jboolean ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper_isMobileWithComGoogleI18nPhonenumbersPhoneNumberUtil_PhoneNumberType_(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper *self, ComGoogleI18nPhonenumbersPhoneNumberUtil_PhoneNumberType *numberType) {
  return (numberType == JreLoadEnum(ComGoogleI18nPhonenumbersPhoneNumberUtil_PhoneNumberType, MOBILE) || numberType == JreLoadEnum(ComGoogleI18nPhonenumbersPhoneNumberUtil_PhoneNumberType, FIXED_LINE_OR_MOBILE) || numberType == JreLoadEnum(ComGoogleI18nPhonenumbersPhoneNumberUtil_PhoneNumberType, PAGER));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleI18nPhonenumbersPhoneNumberToCarrierMapper)
