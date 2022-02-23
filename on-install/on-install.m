// Thank you Karen for some of the code!
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>
#include <sys/stat.h>
#include <spawn.h>
#include <version.h>

typedef struct __CFUserNotification *CFUserNotificationRef;
FOUNDATION_EXTERN CFUserNotificationRef CFUserNotificationCreate(CFAllocatorRef allocator, CFTimeInterval timeout, CFOptionFlags flags, SInt32 *error, CFDictionaryRef dictionary);
FOUNDATION_EXTERN SInt32 CFUserNotificationReceiveResponse(CFUserNotificationRef userNotification, CFTimeInterval timeout, CFOptionFlags *responseFlags);

int main(int argc, const char **argv) {
    #ifdef POSTINST
		if (access("/var/mobile/me.nebula.betterblock.no-postinst-notification", F_OK) == -1) {
			CFUserNotificationRef postinstNotification = CFUserNotificationCreate(kCFAllocatorDefault, 0, 0, NULL, (__bridge CFDictionaryRef)[[NSDictionary alloc] initWithObjectsAndKeys:
				[NSString stringWithFormat:@"%@ %@", (kCFCoreFoundationVersionNumber >= kCFCoreFoundationVersionNumber_iOS_6_0) ? @"⚠️" : @"⚠", @"FINISH INSTALL"], @"AlertHeader",
				@"To finish installing BetterBlock, you need to open the BetterBlock menu in settings.", @"AlertMessage",
				@"Thank you!", @"DefaultButtonTitle", nil]);
			CFUserNotificationReceiveResponse(postinstNotification, 0, NULL);
		}
		printf("※ FINISH INSTALL: To finish installing BetterBlock, you need to open the BetterBlock menu in settings.\n");
	#endif
	return 0;
}