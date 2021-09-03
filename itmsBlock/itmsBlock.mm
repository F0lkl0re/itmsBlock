#line 1 "/Users/tihmstar/dev/itmsBlock/itmsBlock/itmsBlock.xm"


#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>






#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SUWebViewController; 
static void (*_logos_orig$_ungrouped$SUWebViewController$_loadURLRequest$)(_LOGOS_SELF_TYPE_NORMAL SUWebViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SUWebViewController$_loadURLRequest$(_LOGOS_SELF_TYPE_NORMAL SUWebViewController* _LOGOS_SELF_CONST, SEL, id); 

#line 13 "/Users/tihmstar/dev/itmsBlock/itmsBlock/itmsBlock.xm"


static void _logos_method$_ungrouped$SUWebViewController$_loadURLRequest$(_LOGOS_SELF_TYPE_NORMAL SUWebViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id req){
    if (req) {
        NSURL *url = [req URL];
        if ([[url absoluteString] hasPrefix:@"data:"]) {
            _logos_orig$_ungrouped$SUWebViewController$_loadURLRequest$(self, _cmd, nil);
            return;
        }
    }
    _logos_orig$_ungrouped$SUWebViewController$_loadURLRequest$(self, _cmd, req);
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SUWebViewController = objc_getClass("SUWebViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SUWebViewController, @selector(_loadURLRequest:), (IMP)&_logos_method$_ungrouped$SUWebViewController$_loadURLRequest$, (IMP*)&_logos_orig$_ungrouped$SUWebViewController$_loadURLRequest$);}} }
#line 28 "/Users/tihmstar/dev/itmsBlock/itmsBlock/itmsBlock.xm"
