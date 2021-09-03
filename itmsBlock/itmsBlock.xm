// See http://iphonedevwiki.net/index.php/Logos

#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>

/*
    Hook suggested by @pattern_F_
 */

%hook SUWebViewController

-(void)_loadURLRequest:(id)req{
    if (req) {
        NSURL *url = [req URL];
        if ([[url absoluteString] hasPrefix:@"data:"]) {
            %orig(nil);
            return;
        }
    }
    %orig;
}

%end

