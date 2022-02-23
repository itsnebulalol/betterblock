#include "EPRootListController.h"
#import <CepheiPrefs/HBAppearanceSettings.h>
#import <Cephei/HBPreferences.h>
#import <CepheiPrefs/HBRootListController.h>

@implementation EPRootListController
- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

- (instancetype)init {
    self = [super init];

    if (self) {
        HBAppearanceSettings *appearanceSettings = [[HBAppearanceSettings alloc] init];
        appearanceSettings.tintColor = [UIColor colorWithRed:0.090f green:0.925f blue:0.776f alpha:1];
        appearanceSettings.tableViewCellSeparatorColor = [UIColor colorWithWhite:0 alpha:0];
        self.hb_appearanceSettings = appearanceSettings;
    }
    return self;
}

- (void)patreon:(id)sender {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://patreon.com/nebulalol"]];
}

- (void)dotprofile:(id)sender {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itsnebula.net/betterblock.mobileconfig"]];
}

- (void)dohprofile:(id)sender {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itsnebula.net/betterblock-doh.mobileconfig"]];
}
@end