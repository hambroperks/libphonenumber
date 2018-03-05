//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/libphonenumber/java/internal/prefixmapper/src/main/java/com/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/i18n/phonenumbers/PhoneNumberUtil.h"
#include "com/google/i18n/phonenumbers/Phonenumber.h"
#include "com/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage.h"
#include "com/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage.h"
#include "com/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap.h"
#include "com/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/ObjectInput.h"
#include "java/io/ObjectOutput.h"
#include "java/io/ObjectOutputStream.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/util/SortedMap.h"
#include "java/util/SortedSet.h"
#include "java/util/TreeSet.h"
#include "java/util/logging/Logger.h"

@interface ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap () {
 @public
  ComGoogleI18nPhonenumbersPhoneNumberUtil *phoneUtil_;
  ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *phonePrefixMapStorage_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap, phoneUtil_, ComGoogleI18nPhonenumbersPhoneNumberUtil *)
J2OBJC_FIELD_SETTER(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap, phonePrefixMapStorage_, ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *)

inline JavaUtilLoggingLogger *ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_get_logger(void);
static JavaUtilLoggingLogger *ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_logger;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap, logger, JavaUtilLoggingLogger *)

__attribute__((unused)) static jint ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_getSizeOfPhonePrefixMapStorageWithComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy_withJavaUtilSortedMap_(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *mapStorage, id<JavaUtilSortedMap> phonePrefixMap);

__attribute__((unused)) static ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_createDefaultMapStorage(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap *self);

__attribute__((unused)) static ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_createFlyweightMapStorage(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap *self);

__attribute__((unused)) static jint ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_binarySearchWithInt_withInt_withLong_(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap *self, jint start, jint end, jlong value);

J2OBJC_INITIALIZED_DEFN(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap)

@implementation ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap

- (ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *)getPhonePrefixMapStorage {
  return phonePrefixMapStorage_;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *)getSmallerMapStorageWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)phonePrefixMap {
  @try {
    ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *flyweightMapStorage = ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_createFlyweightMapStorage(self);
    jint sizeOfFlyweightMapStorage = ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_getSizeOfPhonePrefixMapStorageWithComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy_withJavaUtilSortedMap_(flyweightMapStorage, phonePrefixMap);
    ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *defaultMapStorage = ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_createDefaultMapStorage(self);
    jint sizeOfDefaultMapStorage = ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_getSizeOfPhonePrefixMapStorageWithComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy_withJavaUtilSortedMap_(defaultMapStorage, phonePrefixMap);
    return sizeOfFlyweightMapStorage < sizeOfDefaultMapStorage ? flyweightMapStorage : defaultMapStorage;
  }
  @catch (JavaIoIOException *e) {
    [((JavaUtilLoggingLogger *) nil_chk(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_logger)) severeWithNSString:[e getMessage]];
    return ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_createFlyweightMapStorage(self);
  }
}

- (void)readPhonePrefixMapWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)sortedPhonePrefixMap {
  JreStrongAssign(&phonePrefixMapStorage_, [self getSmallerMapStorageWithJavaUtilSortedMap:sortedPhonePrefixMap]);
}

- (void)readExternalWithJavaIoObjectInput:(id<JavaIoObjectInput>)objectInput {
  jboolean useFlyweightMapStorage = [((id<JavaIoObjectInput>) nil_chk(objectInput)) readBoolean];
  if (useFlyweightMapStorage) {
    JreStrongAssignAndConsume(&phonePrefixMapStorage_, new_ComGoogleI18nPhonenumbersPrefixmapperFlyweightMapStorage_init());
  }
  else {
    JreStrongAssignAndConsume(&phonePrefixMapStorage_, new_ComGoogleI18nPhonenumbersPrefixmapperDefaultMapStorage_init());
  }
  [phonePrefixMapStorage_ readExternalWithJavaIoObjectInput:objectInput];
}

- (void)writeExternalWithJavaIoObjectOutput:(id<JavaIoObjectOutput>)objectOutput {
  [((id<JavaIoObjectOutput>) nil_chk(objectOutput)) writeBooleanWithBoolean:[phonePrefixMapStorage_ isKindOfClass:[ComGoogleI18nPhonenumbersPrefixmapperFlyweightMapStorage class]]];
  [((ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *) nil_chk(phonePrefixMapStorage_)) writeExternalWithJavaIoObjectOutput:objectOutput];
}

- (NSString *)lookupWithLong:(jlong)number {
  jint numOfEntries = [((ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *) nil_chk(phonePrefixMapStorage_)) getNumOfEntries];
  if (numOfEntries == 0) {
    return nil;
  }
  jlong phonePrefix = number;
  jint currentIndex = numOfEntries - 1;
  id<JavaUtilSortedSet> currentSetOfLengths = [((ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *) nil_chk(phonePrefixMapStorage_)) getPossibleLengths];
  while ([((id<JavaUtilSortedSet>) nil_chk(currentSetOfLengths)) size] > 0) {
    JavaLangInteger *possibleLength = [currentSetOfLengths last];
    NSString *phonePrefixStr = NSString_java_valueOfLong_(phonePrefix);
    if ([((NSString *) nil_chk(phonePrefixStr)) java_length] > [((JavaLangInteger *) nil_chk(possibleLength)) intValue]) {
      phonePrefix = JavaLangLong_parseLongWithNSString_([phonePrefixStr java_substring:0 endIndex:[possibleLength intValue]]);
    }
    currentIndex = ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_binarySearchWithInt_withInt_withLong_(self, 0, currentIndex, phonePrefix);
    if (currentIndex < 0) {
      return nil;
    }
    jint currentPrefix = [((ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *) nil_chk(phonePrefixMapStorage_)) getPrefixWithInt:currentIndex];
    if (phonePrefix == currentPrefix) {
      return [((ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *) nil_chk(phonePrefixMapStorage_)) getDescriptionWithInt:currentIndex];
    }
    currentSetOfLengths = [currentSetOfLengths headSetWithId:possibleLength];
  }
  return nil;
}

- (NSString *)lookupWithComGoogleI18nPhonenumbersPhonenumber_PhoneNumber:(ComGoogleI18nPhonenumbersPhonenumber_PhoneNumber *)number {
  jlong phonePrefix = JavaLangLong_parseLongWithNSString_(JreStrcat("I$", [((ComGoogleI18nPhonenumbersPhonenumber_PhoneNumber *) nil_chk(number)) getCountryCode], [((ComGoogleI18nPhonenumbersPhoneNumberUtil *) nil_chk(phoneUtil_)) getNationalSignificantNumberWithComGoogleI18nPhonenumbersPhonenumber_PhoneNumber:number]));
  return [self lookupWithLong:phonePrefix];
}

- (NSString *)description {
  return [((ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *) nil_chk(phonePrefixMapStorage_)) description];
}

- (void)dealloc {
  RELEASE_(phoneUtil_);
  RELEASE_(phonePrefixMapStorage_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap class]) {
    JreStrongAssign(&ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_logger, JavaUtilLoggingLogger_getLoggerWithNSString_([ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_class_() getName]));
    J2OBJC_SET_INITIALIZED(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap)
  }
}

@end

void ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_init(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap *self) {
  NSObject_init(self);
  JreStrongAssign(&self->phoneUtil_, ComGoogleI18nPhonenumbersPhoneNumberUtil_getInstance());
}

ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap *new_ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_init() {
  J2OBJC_NEW_IMPL(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap, init)
}

ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap *create_ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_init() {
  J2OBJC_CREATE_IMPL(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap, init)
}

jint ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_getSizeOfPhonePrefixMapStorageWithComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy_withJavaUtilSortedMap_(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *mapStorage, id<JavaUtilSortedMap> phonePrefixMap) {
  ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_initialize();
  [((ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *) nil_chk(mapStorage)) readFromSortedMapWithJavaUtilSortedMap:phonePrefixMap];
  JavaIoByteArrayOutputStream *byteArrayOutputStream = create_JavaIoByteArrayOutputStream_init();
  JavaIoObjectOutputStream *objectOutputStream = create_JavaIoObjectOutputStream_initWithJavaIoOutputStream_(byteArrayOutputStream);
  [mapStorage writeExternalWithJavaIoObjectOutput:objectOutputStream];
  [objectOutputStream flush];
  jint sizeOfStorage = [byteArrayOutputStream size];
  [objectOutputStream close];
  return sizeOfStorage;
}

ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_createDefaultMapStorage(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap *self) {
  return create_ComGoogleI18nPhonenumbersPrefixmapperDefaultMapStorage_init();
}

ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_createFlyweightMapStorage(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap *self) {
  return create_ComGoogleI18nPhonenumbersPrefixmapperFlyweightMapStorage_init();
}

jint ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap_binarySearchWithInt_withInt_withLong_(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap *self, jint start, jint end, jlong value) {
  jint current = 0;
  while (start <= end) {
    current = JreURShift32((start + end), 1);
    jint currentValue = [((ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *) nil_chk(self->phonePrefixMapStorage_)) getPrefixWithInt:current];
    if (currentValue == value) {
      return current;
    }
    else if (currentValue > value) {
      current--;
      end = current;
    }
    else {
      start = current + 1;
    }
  }
  return current;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMap)
